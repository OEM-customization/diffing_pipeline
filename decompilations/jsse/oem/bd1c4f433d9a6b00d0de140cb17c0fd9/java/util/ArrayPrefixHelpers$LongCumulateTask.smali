.class final Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
.super Ljava/util/concurrent/CountedCompleter;
.source "ArrayPrefixHelpers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ArrayPrefixHelpers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LongCumulateTask"
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
.field private static final serialVersionUID:J = -0x466ad3045ec06db1L


# instance fields
.field final array:[J

.field final fence:I

.field final function:Ljava/util/function/LongBinaryOperator;

.field final hi:I

.field in:J

.field left:Ljava/util/ArrayPrefixHelpers$LongCumulateTask;

.field final lo:I

.field final origin:I

.field out:J

.field right:Ljava/util/ArrayPrefixHelpers$LongCumulateTask;

.field final threshold:I


# direct methods
.method public constructor <init>(Ljava/util/ArrayPrefixHelpers$LongCumulateTask;Ljava/util/function/LongBinaryOperator;[JII)V
    .registers 10
    .param p1, "parent"    # Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .param p2, "function"    # Ljava/util/function/LongBinaryOperator;
    .param p3, "array"    # [J
    .param p4, "lo"    # I
    .param p5, "hi"    # I

    .prologue
    const/16 v1, 0x10

    .line 268
    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    .line 269
    iput-object p2, p0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->function:Ljava/util/function/LongBinaryOperator;

    iput-object p3, p0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->array:[J

    .line 270
    iput p4, p0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->origin:I

    iput p4, p0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->lo:I

    iput p5, p0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->fence:I

    iput p5, p0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->hi:I

    .line 273
    sub-int v2, p5, p4

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v3

    shl-int/lit8 v3, v3, 0x3

    div-int v0, v2, v3

    .local v0, "p":I
    if-gt v0, v1, :cond_1e

    move v0, v1

    .line 272
    .end local v0    # "p":I
    :cond_1e
    iput v0, p0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->threshold:I

    .line 275
    return-void
.end method

.method constructor <init>(Ljava/util/ArrayPrefixHelpers$LongCumulateTask;Ljava/util/function/LongBinaryOperator;[JIIIII)V
    .registers 9
    .param p1, "parent"    # Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .param p2, "function"    # Ljava/util/function/LongBinaryOperator;
    .param p3, "array"    # [J
    .param p4, "origin"    # I
    .param p5, "fence"    # I
    .param p6, "threshold"    # I
    .param p7, "lo"    # I
    .param p8, "hi"    # I

    .prologue
    .line 281
    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    .line 282
    iput-object p2, p0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->function:Ljava/util/function/LongBinaryOperator;

    iput-object p3, p0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->array:[J

    .line 283
    iput p4, p0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->origin:I

    iput p5, p0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->fence:I

    .line 284
    iput p6, p0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->threshold:I

    .line 285
    iput p7, p0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->lo:I

    iput p8, p0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->hi:I

    .line 286
    return-void
.end method


# virtual methods
.method public final compute()V
    .registers 39

    .prologue
    .line 291
    move-object/from16 v0, p0

    iget-object v6, v0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->function:Ljava/util/function/LongBinaryOperator;

    .local v6, "fn":Ljava/util/function/LongBinaryOperator;
    if-eqz v6, :cond_c

    move-object/from16 v0, p0

    iget-object v7, v0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->array:[J

    .local v7, "a":[J
    if-nez v7, :cond_12

    .line 292
    .end local v7    # "a":[J
    :cond_c
    new-instance v14, Ljava/lang/NullPointerException;

    invoke-direct {v14}, Ljava/lang/NullPointerException;-><init>()V

    throw v14

    .line 293
    .restart local v7    # "a":[J
    :cond_12
    move-object/from16 v0, p0

    iget v10, v0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->threshold:I

    .local v10, "th":I
    move-object/from16 v0, p0

    iget v8, v0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->origin:I

    .local v8, "org":I
    move-object/from16 v0, p0

    iget v9, v0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->fence:I

    .line 294
    .local v9, "fnc":I
    move-object/from16 v5, p0

    .line 295
    :cond_20
    :goto_20
    iget v0, v5, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->lo:I

    move/from16 v20, v0

    .local v20, "l":I
    if-ltz v20, :cond_87

    iget v12, v5, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->hi:I

    .local v12, "h":I
    array-length v14, v7

    if-gt v12, v14, :cond_87

    .line 296
    sub-int v14, v12, v20

    if-le v14, v10, :cond_ad

    .line 297
    iget-object v13, v5, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->left:Ljava/util/ArrayPrefixHelpers$LongCumulateTask;

    .local v13, "lt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    iget-object v4, v5, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->right:Ljava/util/ArrayPrefixHelpers$LongCumulateTask;

    .line 298
    .local v4, "rt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    if-nez v13, :cond_5c

    .line 299
    add-int v14, v20, v12

    ushr-int/lit8 v11, v14, 0x1

    .line 301
    .local v11, "mid":I
    new-instance v4, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;

    .end local v4    # "rt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    invoke-direct/range {v4 .. v12}, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$LongCumulateTask;Ljava/util/function/LongBinaryOperator;[JIIIII)V

    .line 300
    iput-object v4, v5, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->right:Ljava/util/ArrayPrefixHelpers$LongCumulateTask;

    .restart local v4    # "rt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    move-object/from16 v24, v4

    .line 303
    .local v24, "f":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    new-instance v13, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;

    .end local v13    # "lt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    move-object v14, v5

    move-object v15, v6

    move-object/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v19, v10

    move/from16 v21, v11

    invoke-direct/range {v13 .. v21}, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$LongCumulateTask;Ljava/util/function/LongBinaryOperator;[JIIIII)V

    .line 302
    iput-object v13, v5, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->left:Ljava/util/ArrayPrefixHelpers$LongCumulateTask;

    .restart local v13    # "lt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    move-object v5, v13

    .line 335
    .end local v11    # "mid":I
    .end local v24    # "f":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    :cond_56
    if-eqz v24, :cond_20

    .line 336
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_20

    .line 306
    :cond_5c
    iget-wide v0, v5, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->in:J

    move-wide/from16 v32, v0

    .line 307
    .local v32, "pin":J
    move-wide/from16 v0, v32

    iput-wide v0, v13, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->in:J

    .line 308
    const/4 v5, 0x0

    .local v5, "t":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    const/16 v24, 0x0

    .line 309
    .local v24, "f":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    if-eqz v4, :cond_7d

    .line 310
    iget-wide v0, v13, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->out:J

    move-wide/from16 v28, v0

    .line 311
    .local v28, "lout":J
    move/from16 v0, v20

    if-ne v0, v8, :cond_88

    .end local v28    # "lout":J
    :goto_71
    move-wide/from16 v0, v28

    iput-wide v0, v4, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->in:J

    .line 314
    :cond_75
    invoke-virtual {v4}, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->getPendingCount()I

    move-result v23

    .local v23, "c":I
    and-int/lit8 v14, v23, 0x1

    if-eqz v14, :cond_91

    .line 323
    .end local v5    # "t":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .end local v23    # "c":I
    :cond_7d
    :goto_7d
    invoke-virtual {v13}, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->getPendingCount()I

    move-result v23

    .restart local v23    # "c":I
    and-int/lit8 v14, v23, 0x1

    if-eqz v14, :cond_9d

    .line 332
    .end local v24    # "f":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    :goto_85
    if-nez v5, :cond_56

    .line 403
    .end local v4    # "rt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .end local v12    # "h":I
    .end local v13    # "lt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .end local v23    # "c":I
    .end local v32    # "pin":J
    :cond_87
    :goto_87
    return-void

    .line 312
    .restart local v4    # "rt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .restart local v5    # "t":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .restart local v12    # "h":I
    .restart local v13    # "lt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .restart local v24    # "f":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .restart local v28    # "lout":J
    .restart local v32    # "pin":J
    :cond_88
    move-wide/from16 v0, v32

    move-wide/from16 v2, v28

    invoke-interface {v6, v0, v1, v2, v3}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v28

    goto :goto_71

    .line 316
    .end local v28    # "lout":J
    .restart local v23    # "c":I
    :cond_91
    or-int/lit8 v14, v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v4, v0, v14}, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->compareAndSetPendingCount(II)Z

    move-result v14

    if-eqz v14, :cond_75

    .line 317
    move-object v5, v4

    .line 318
    .local v5, "t":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    goto :goto_7d

    .line 325
    .end local v5    # "t":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    :cond_9d
    or-int/lit8 v14, v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v13, v0, v14}, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->compareAndSetPendingCount(II)Z

    move-result v14

    if-eqz v14, :cond_7d

    .line 326
    if-eqz v5, :cond_ab

    .line 327
    move-object/from16 v24, v5

    .line 328
    .end local v24    # "f":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    :cond_ab
    move-object v5, v13

    .line 329
    .restart local v5    # "t":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    goto :goto_85

    .line 341
    .end local v4    # "rt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .end local v5    # "t":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .end local v13    # "lt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .end local v23    # "c":I
    .end local v32    # "pin":J
    :cond_ad
    invoke-virtual {v5}, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->getPendingCount()I

    move-result v22

    .local v22, "b":I
    and-int/lit8 v14, v22, 0x4

    if-nez v14, :cond_87

    .line 343
    and-int/lit8 v14, v22, 0x1

    if-eqz v14, :cond_e5

    const/16 v34, 0x4

    .line 345
    .local v34, "state":I
    :goto_bb
    or-int v14, v22, v34

    move/from16 v0, v22

    invoke-virtual {v5, v0, v14}, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->compareAndSetPendingCount(II)Z

    move-result v14

    if-eqz v14, :cond_ad

    .line 350
    const/4 v14, 0x2

    move/from16 v0, v34

    if-eq v0, v14, :cond_f6

    .line 352
    move/from16 v0, v20

    if-ne v0, v8, :cond_ef

    .line 353
    aget-wide v36, v7, v8

    .line 354
    .local v36, "sum":J
    add-int/lit8 v25, v8, 0x1

    .line 360
    .local v25, "first":I
    :goto_d2
    move/from16 v26, v25

    .local v26, "i":I
    :goto_d4
    move/from16 v0, v26

    if-ge v0, v12, :cond_10f

    .line 361
    aget-wide v14, v7, v26

    move-wide/from16 v0, v36

    invoke-interface {v6, v0, v1, v14, v15}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v36

    aput-wide v36, v7, v26

    .line 360
    add-int/lit8 v26, v26, 0x1

    goto :goto_d4

    .line 344
    .end local v25    # "first":I
    .end local v26    # "i":I
    .end local v34    # "state":I
    .end local v36    # "sum":J
    :cond_e5
    move/from16 v0, v20

    if-le v0, v8, :cond_ec

    const/16 v34, 0x2

    .restart local v34    # "state":I
    goto :goto_bb

    .end local v34    # "state":I
    :cond_ec
    const/16 v34, 0x6

    .restart local v34    # "state":I
    goto :goto_bb

    .line 357
    :cond_ef
    iget-wide v0, v5, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->in:J

    move-wide/from16 v36, v0

    .line 358
    .restart local v36    # "sum":J
    move/from16 v25, v20

    .restart local v25    # "first":I
    goto :goto_d2

    .line 363
    .end local v25    # "first":I
    .end local v36    # "sum":J
    :cond_f6
    if-ge v12, v9, :cond_10b

    .line 364
    aget-wide v36, v7, v20

    .line 365
    .restart local v36    # "sum":J
    add-int/lit8 v26, v20, 0x1

    .restart local v26    # "i":I
    :goto_fc
    move/from16 v0, v26

    if-ge v0, v12, :cond_10f

    .line 366
    aget-wide v14, v7, v26

    move-wide/from16 v0, v36

    invoke-interface {v6, v0, v1, v14, v15}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v36

    .line 365
    add-int/lit8 v26, v26, 0x1

    goto :goto_fc

    .line 369
    .end local v26    # "i":I
    .end local v36    # "sum":J
    :cond_10b
    iget-wide v0, v5, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->in:J

    move-wide/from16 v36, v0

    .line 370
    .restart local v36    # "sum":J
    :cond_10f
    move-wide/from16 v0, v36

    iput-wide v0, v5, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->out:J

    .line 372
    :cond_113
    :goto_113
    invoke-virtual {v5}, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->getCompleter()Ljava/util/concurrent/CountedCompleter;

    move-result-object v30

    check-cast v30, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;

    .local v30, "par":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    if-nez v30, :cond_124

    .line 373
    and-int/lit8 v14, v34, 0x4

    if-eqz v14, :cond_87

    .line 374
    invoke-virtual {v5}, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->quietlyComplete()V

    goto/16 :goto_87

    .line 377
    :cond_124
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->getPendingCount()I

    move-result v22

    .line 378
    and-int v14, v22, v34

    and-int/lit8 v14, v14, 0x4

    if-eqz v14, :cond_131

    .line 379
    move-object/from16 v5, v30

    .restart local v5    # "t":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    goto :goto_113

    .line 380
    .end local v5    # "t":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    :cond_131
    and-int v14, v22, v34

    and-int/lit8 v14, v14, 0x2

    if-eqz v14, :cond_189

    .line 382
    move-object/from16 v0, v30

    iget-object v13, v0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->left:Ljava/util/ArrayPrefixHelpers$LongCumulateTask;

    .restart local v13    # "lt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    if-eqz v13, :cond_151

    .line 383
    move-object/from16 v0, v30

    iget-object v4, v0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->right:Ljava/util/ArrayPrefixHelpers$LongCumulateTask;

    .restart local v4    # "rt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    if-eqz v4, :cond_151

    .line 384
    iget-wide v0, v13, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->out:J

    move-wide/from16 v28, v0

    .line 385
    .restart local v28    # "lout":J
    iget v14, v4, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->hi:I

    if-ne v14, v9, :cond_17d

    .end local v28    # "lout":J
    :goto_14b
    move-wide/from16 v0, v28

    move-object/from16 v2, v30

    iput-wide v0, v2, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->out:J

    .line 388
    .end local v4    # "rt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    :cond_151
    and-int/lit8 v14, v22, 0x1

    if-nez v14, :cond_186

    .line 389
    move-object/from16 v0, v30

    iget v14, v0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->lo:I

    if-ne v14, v8, :cond_186

    const/16 v31, 0x1

    .line 390
    .local v31, "refork":I
    :goto_15d
    or-int v14, v22, v34

    or-int v27, v14, v31

    .local v27, "nextState":I
    move/from16 v0, v27

    move/from16 v1, v22

    if-eq v0, v1, :cond_173

    .line 391
    move-object/from16 v0, v30

    move/from16 v1, v22

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->compareAndSetPendingCount(II)Z

    move-result v14

    .line 390
    if-eqz v14, :cond_113

    .line 392
    :cond_173
    const/16 v34, 0x2

    .line 393
    move-object/from16 v5, v30

    .line 394
    .restart local v5    # "t":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    if-eqz v31, :cond_113

    .line 395
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_113

    .line 386
    .end local v5    # "t":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .end local v27    # "nextState":I
    .end local v31    # "refork":I
    .restart local v4    # "rt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .restart local v28    # "lout":J
    :cond_17d
    iget-wide v14, v4, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->out:J

    move-wide/from16 v0, v28

    invoke-interface {v6, v0, v1, v14, v15}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v28

    goto :goto_14b

    .line 389
    .end local v4    # "rt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .end local v28    # "lout":J
    :cond_186
    const/16 v31, 0x0

    .restart local v31    # "refork":I
    goto :goto_15d

    .line 398
    .end local v13    # "lt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .end local v31    # "refork":I
    :cond_189
    or-int v14, v22, v34

    move-object/from16 v0, v30

    move/from16 v1, v22

    invoke-virtual {v0, v1, v14}, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->compareAndSetPendingCount(II)Z

    move-result v14

    if-eqz v14, :cond_113

    goto/16 :goto_87
.end method
