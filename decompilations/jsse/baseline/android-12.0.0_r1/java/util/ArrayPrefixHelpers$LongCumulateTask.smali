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
        "Ljava/util/concurrent/CountedCompleter<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = -0x466ad3045ec06db1L


# instance fields
.field final blacklist array:[J

.field final blacklist fence:I

.field final blacklist function:Ljava/util/function/LongBinaryOperator;

.field final blacklist hi:I

.field blacklist in:J

.field blacklist left:Ljava/util/ArrayPrefixHelpers$LongCumulateTask;

.field final blacklist lo:I

.field final blacklist origin:I

.field blacklist out:J

.field blacklist right:Ljava/util/ArrayPrefixHelpers$LongCumulateTask;

.field final blacklist threshold:I


# direct methods
.method public constructor blacklist <init>(Ljava/util/ArrayPrefixHelpers$LongCumulateTask;Ljava/util/function/LongBinaryOperator;[JII)V
    .registers 9
    .param p1, "parent"    # Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .param p2, "function"    # Ljava/util/function/LongBinaryOperator;
    .param p3, "array"    # [J
    .param p4, "lo"    # I
    .param p5, "hi"    # I

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

    .line 272
    nop

    .line 274
    sub-int v0, p5, p4

    .line 273
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v1

    shl-int/lit8 v1, v1, 0x3

    div-int/2addr v0, v1

    move v1, v0

    .local v1, "p":I
    const/16 v2, 0x10

    if-gt v0, v2, :cond_1f

    .line 274
    goto :goto_20

    :cond_1f
    move v2, v1

    :goto_20
    iput v2, p0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->threshold:I

    .line 275
    return-void
.end method

.method constructor blacklist <init>(Ljava/util/ArrayPrefixHelpers$LongCumulateTask;Ljava/util/function/LongBinaryOperator;[JIIIII)V
    .registers 9
    .param p1, "parent"    # Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .param p2, "function"    # Ljava/util/function/LongBinaryOperator;
    .param p3, "array"    # [J
    .param p4, "origin"    # I
    .param p5, "fence"    # I
    .param p6, "threshold"    # I
    .param p7, "lo"    # I
    .param p8, "hi"    # I

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
.method public final whitelist test-api compute()V
    .registers 24

    .line 291
    move-object/from16 v0, p0

    iget-object v1, v0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->function:Ljava/util/function/LongBinaryOperator;

    move-object v11, v1

    .local v11, "fn":Ljava/util/function/LongBinaryOperator;
    if-eqz v1, :cond_1e1

    iget-object v1, v0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->array:[J

    move-object v12, v1

    .local v12, "a":[J
    if-eqz v1, :cond_1e1

    .line 293
    iget v1, v0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->threshold:I

    .local v1, "th":I
    iget v13, v0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->origin:I

    .local v13, "org":I
    iget v14, v0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->fence:I

    .line 294
    .local v14, "fnc":I
    move-object/from16 v2, p0

    move-object v15, v2

    .line 295
    .local v15, "t":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    :goto_15
    iget v2, v15, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->lo:I

    move v10, v2

    .local v10, "l":I
    if-ltz v2, :cond_1de

    iget v2, v15, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->hi:I

    move v9, v2

    .local v9, "h":I
    array-length v3, v12

    if-gt v2, v3, :cond_1d9

    .line 296
    sub-int v2, v9, v10

    const/4 v3, 0x1

    if-le v2, v1, :cond_cc

    .line 297
    iget-object v8, v15, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->left:Ljava/util/ArrayPrefixHelpers$LongCumulateTask;

    .local v8, "lt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    iget-object v7, v15, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->right:Ljava/util/ArrayPrefixHelpers$LongCumulateTask;

    .line 298
    .local v7, "rt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    if-nez v8, :cond_65

    .line 299
    add-int v2, v10, v9

    ushr-int/lit8 v16, v2, 0x1

    .line 300
    .local v16, "mid":I
    new-instance v6, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;

    move-object v2, v6

    move-object v3, v15

    move-object v4, v11

    move-object v5, v12

    move-object v0, v6

    move v6, v13

    move-object/from16 v17, v7

    .end local v7    # "rt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .local v17, "rt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    move v7, v14

    move-object/from16 v18, v8

    .end local v8    # "lt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .local v18, "lt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    move v8, v1

    move/from16 v19, v9

    .end local v9    # "h":I
    .local v19, "h":I
    move/from16 v9, v16

    move/from16 v20, v10

    .end local v10    # "l":I
    .local v20, "l":I
    move/from16 v10, v19

    invoke-direct/range {v2 .. v10}, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$LongCumulateTask;Ljava/util/function/LongBinaryOperator;[JIIIII)V

    iput-object v0, v15, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->right:Ljava/util/ArrayPrefixHelpers$LongCumulateTask;

    move-object/from16 v17, v0

    .line 302
    .local v0, "f":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    new-instance v10, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;

    move-object v2, v10

    move/from16 v9, v20

    move-object/from16 v21, v0

    move-object v0, v10

    .end local v0    # "f":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .local v21, "f":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    move/from16 v10, v16

    invoke-direct/range {v2 .. v10}, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$LongCumulateTask;Ljava/util/function/LongBinaryOperator;[JIIIII)V

    iput-object v0, v15, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->left:Ljava/util/ArrayPrefixHelpers$LongCumulateTask;

    move-object v8, v0

    .line 304
    .end local v15    # "t":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .end local v16    # "mid":I
    .end local v18    # "lt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .local v0, "t":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .restart local v8    # "lt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    move-object v15, v0

    move-object/from16 v7, v17

    move/from16 v10, v20

    move-object/from16 v0, v21

    goto/16 :goto_c3

    .line 306
    .end local v0    # "t":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .end local v17    # "rt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .end local v19    # "h":I
    .end local v20    # "l":I
    .end local v21    # "f":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .restart local v7    # "rt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .restart local v9    # "h":I
    .restart local v10    # "l":I
    .restart local v15    # "t":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    :cond_65
    move-object/from16 v17, v7

    move-object/from16 v18, v8

    move/from16 v19, v9

    move/from16 v20, v10

    .end local v7    # "rt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .end local v8    # "lt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .end local v9    # "h":I
    .end local v10    # "l":I
    .restart local v17    # "rt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .restart local v18    # "lt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .restart local v19    # "h":I
    .restart local v20    # "l":I
    iget-wide v4, v15, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->in:J

    .line 307
    .local v4, "pin":J
    move-object/from16 v0, v18

    .end local v18    # "lt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .local v0, "lt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    iput-wide v4, v0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->in:J

    .line 308
    const/4 v2, 0x0

    move-object v6, v2

    .line 309
    .end local v15    # "t":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .local v2, "f":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .local v6, "t":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    nop

    .end local v17    # "rt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .restart local v7    # "rt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    if-eqz v7, :cond_9f

    .line 310
    iget-wide v8, v0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->out:J

    .line 311
    .local v8, "lout":J
    move/from16 v10, v20

    .end local v20    # "l":I
    .restart local v10    # "l":I
    if-ne v10, v13, :cond_82

    move-wide/from16 v20, v4

    move-wide v3, v8

    goto :goto_89

    .line 312
    :cond_82
    invoke-interface {v11, v4, v5, v8, v9}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v15

    move-wide/from16 v20, v4

    move-wide v3, v15

    .end local v4    # "pin":J
    .local v20, "pin":J
    :goto_89
    iput-wide v3, v7, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->in:J

    .line 314
    :cond_8b
    invoke-virtual {v7}, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->getPendingCount()I

    move-result v3

    move v4, v3

    const/4 v5, 0x1

    .local v4, "c":I
    and-int/2addr v3, v5

    if-eqz v3, :cond_95

    .line 315
    goto :goto_a3

    .line 316
    :cond_95
    or-int/lit8 v3, v4, 0x1

    invoke-virtual {v7, v4, v3}, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->compareAndSetPendingCount(II)Z

    move-result v3

    if-eqz v3, :cond_8b

    .line 317
    move-object v6, v7

    .line 318
    goto :goto_a3

    .line 309
    .end local v8    # "lout":J
    .end local v10    # "l":I
    .local v4, "pin":J
    .local v20, "l":I
    :cond_9f
    move/from16 v10, v20

    move-wide/from16 v20, v4

    .line 323
    .end local v4    # "pin":J
    .restart local v10    # "l":I
    .local v20, "pin":J
    :cond_a3
    :goto_a3
    invoke-virtual {v0}, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->getPendingCount()I

    move-result v3

    move v4, v3

    const/4 v5, 0x1

    .local v4, "c":I
    and-int/2addr v3, v5

    if-eqz v3, :cond_ae

    .line 324
    move-object v15, v6

    goto :goto_bb

    .line 325
    :cond_ae
    or-int/lit8 v3, v4, 0x1

    invoke-virtual {v0, v4, v3}, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->compareAndSetPendingCount(II)Z

    move-result v3

    if-eqz v3, :cond_a3

    .line 326
    if-eqz v6, :cond_b9

    .line 327
    move-object v2, v6

    .line 328
    :cond_b9
    move-object v3, v0

    .line 329
    .end local v6    # "t":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .local v3, "t":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    move-object v15, v3

    .line 332
    .end local v3    # "t":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .end local v4    # "c":I
    .restart local v15    # "t":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    :goto_bb
    if-nez v15, :cond_c1

    .line 333
    move/from16 v18, v1

    goto/16 :goto_1e0

    .line 332
    :cond_c1
    move-object v8, v0

    move-object v0, v2

    .line 335
    .end local v2    # "f":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .end local v20    # "pin":J
    .local v0, "f":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .local v8, "lt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    :goto_c3
    if-eqz v0, :cond_c8

    .line 336
    invoke-virtual {v0}, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    .line 337
    .end local v0    # "f":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .end local v7    # "rt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .end local v8    # "lt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    :cond_c8
    move-object/from16 v0, p0

    goto/16 :goto_15

    .line 296
    .end local v19    # "h":I
    .restart local v9    # "h":I
    :cond_cc
    move v5, v3

    move/from16 v19, v9

    .line 341
    .end local v9    # "h":I
    .restart local v19    # "h":I
    :goto_cf
    invoke-virtual {v15}, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->getPendingCount()I

    move-result v0

    move v2, v0

    .local v2, "b":I
    const/4 v3, 0x4

    and-int/2addr v0, v3

    if-eqz v0, :cond_dc

    .line 342
    move/from16 v18, v1

    goto/16 :goto_1e0

    .line 343
    :cond_dc
    and-int/lit8 v0, v2, 0x1

    const/4 v4, 0x2

    if-eqz v0, :cond_e3

    move v0, v3

    goto :goto_e8

    .line 344
    :cond_e3
    if-le v10, v13, :cond_e7

    move v0, v4

    goto :goto_e8

    :cond_e7
    const/4 v0, 0x6

    :goto_e8
    nop

    .line 345
    .local v0, "state":I
    or-int v6, v2, v0

    invoke-virtual {v15, v2, v6}, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->compareAndSetPendingCount(II)Z

    move-result v6

    if-eqz v6, :cond_1d4

    .line 346
    nop

    .line 350
    .end local v2    # "b":I
    if-eq v0, v4, :cond_114

    .line 352
    if-ne v10, v13, :cond_fb

    .line 353
    aget-wide v6, v12, v13

    .line 354
    .local v6, "sum":J
    add-int/lit8 v2, v13, 0x1

    .local v2, "first":I
    goto :goto_fe

    .line 357
    .end local v2    # "first":I
    .end local v6    # "sum":J
    :cond_fb
    iget-wide v6, v15, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->in:J

    .line 358
    .restart local v6    # "sum":J
    move v2, v10

    .line 360
    .restart local v2    # "first":I
    :goto_fe
    move v8, v2

    .local v8, "i":I
    :goto_ff
    move/from16 v9, v19

    .end local v19    # "h":I
    .restart local v9    # "h":I
    if-ge v8, v9, :cond_113

    .line 361
    aget-wide v4, v12, v8

    invoke-interface {v11, v6, v7, v4, v5}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v4

    move-wide v6, v4

    aput-wide v4, v12, v8

    .line 360
    add-int/lit8 v8, v8, 0x1

    move/from16 v19, v9

    const/4 v4, 0x2

    const/4 v5, 0x1

    goto :goto_ff

    .line 362
    .end local v2    # "first":I
    .end local v8    # "i":I
    :cond_113
    goto :goto_12b

    .line 363
    .end local v6    # "sum":J
    .end local v9    # "h":I
    .restart local v19    # "h":I
    :cond_114
    move/from16 v9, v19

    .end local v19    # "h":I
    .restart local v9    # "h":I
    if-ge v9, v14, :cond_129

    .line 364
    aget-wide v4, v12, v10

    .line 365
    .local v4, "sum":J
    add-int/lit8 v2, v10, 0x1

    move-wide v6, v4

    .end local v4    # "sum":J
    .local v2, "i":I
    .restart local v6    # "sum":J
    :goto_11d
    if-ge v2, v9, :cond_128

    .line 366
    aget-wide v4, v12, v2

    invoke-interface {v11, v6, v7, v4, v5}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v6

    .line 365
    add-int/lit8 v2, v2, 0x1

    goto :goto_11d

    .end local v2    # "i":I
    :cond_128
    goto :goto_12b

    .line 369
    .end local v6    # "sum":J
    :cond_129
    iget-wide v6, v15, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->in:J

    .line 370
    .restart local v6    # "sum":J
    :goto_12b
    iput-wide v6, v15, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->out:J

    .line 372
    :goto_12d
    invoke-virtual {v15}, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->getCompleter()Ljava/util/concurrent/CountedCompleter;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;

    move-object v4, v2

    .local v4, "par":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    if-nez v2, :cond_145

    .line 373
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_141

    .line 374
    invoke-virtual {v15}, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->quietlyComplete()V

    move/from16 v18, v1

    goto/16 :goto_1e0

    .line 373
    :cond_141
    move/from16 v18, v1

    goto/16 :goto_1e0

    .line 377
    :cond_145
    invoke-virtual {v4}, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->getPendingCount()I

    move-result v2

    .line 378
    .local v2, "b":I
    and-int v5, v2, v0

    and-int/2addr v5, v3

    if-eqz v5, :cond_158

    .line 379
    move-object v5, v4

    move/from16 v18, v1

    move-object v15, v5

    move-wide/from16 v21, v6

    move/from16 v19, v9

    .end local v15    # "t":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .local v5, "t":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    goto/16 :goto_1cb

    .line 380
    .end local v5    # "t":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .restart local v15    # "t":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    :cond_158
    and-int v5, v2, v0

    const/4 v8, 0x2

    and-int/2addr v5, v8

    if-eqz v5, :cond_1bc

    .line 382
    iget-object v5, v4, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->left:Ljava/util/ArrayPrefixHelpers$LongCumulateTask;

    move-object/from16 v16, v5

    .local v16, "lt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    if-eqz v5, :cond_194

    iget-object v5, v4, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->right:Ljava/util/ArrayPrefixHelpers$LongCumulateTask;

    move-object/from16 v18, v5

    .local v18, "rt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    if-eqz v5, :cond_189

    .line 384
    move/from16 v19, v9

    move-object/from16 v5, v16

    .end local v9    # "h":I
    .end local v16    # "lt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .local v5, "lt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .restart local v19    # "h":I
    iget-wide v8, v5, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->out:J

    .line 385
    .local v8, "lout":J
    move-object/from16 v3, v18

    move/from16 v18, v1

    .end local v1    # "th":I
    .local v3, "rt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .local v18, "th":I
    iget v1, v3, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->hi:I

    if-ne v1, v14, :cond_17d

    move-object v1, v5

    move-wide/from16 v21, v6

    move-wide v5, v8

    goto :goto_186

    .line 386
    :cond_17d
    move-object v1, v5

    move-wide/from16 v21, v6

    .end local v5    # "lt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .end local v6    # "sum":J
    .local v1, "lt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .local v21, "sum":J
    iget-wide v5, v3, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->out:J

    invoke-interface {v11, v8, v9, v5, v6}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v5

    :goto_186
    iput-wide v5, v4, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->out:J

    goto :goto_19c

    .line 382
    .end local v3    # "rt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .end local v8    # "lout":J
    .end local v19    # "h":I
    .end local v21    # "sum":J
    .local v1, "th":I
    .restart local v6    # "sum":J
    .restart local v9    # "h":I
    .restart local v16    # "lt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .local v18, "rt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    :cond_189
    move-wide/from16 v21, v6

    move/from16 v19, v9

    move-object/from16 v3, v18

    move/from16 v18, v1

    move-object/from16 v1, v16

    .end local v6    # "sum":J
    .end local v9    # "h":I
    .end local v16    # "lt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .local v1, "lt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .restart local v3    # "rt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .local v18, "th":I
    .restart local v19    # "h":I
    .restart local v21    # "sum":J
    goto :goto_19c

    .end local v3    # "rt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .end local v18    # "th":I
    .end local v19    # "h":I
    .end local v21    # "sum":J
    .local v1, "th":I
    .restart local v6    # "sum":J
    .restart local v9    # "h":I
    .restart local v16    # "lt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    :cond_194
    move/from16 v18, v1

    move-wide/from16 v21, v6

    move/from16 v19, v9

    move-object/from16 v1, v16

    .line 388
    .end local v6    # "sum":J
    .end local v9    # "h":I
    .end local v16    # "lt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .local v1, "lt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .restart local v18    # "th":I
    .restart local v19    # "h":I
    .restart local v21    # "sum":J
    :goto_19c
    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_1a6

    iget v3, v4, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->lo:I

    if-ne v3, v13, :cond_1a6

    .line 389
    const/4 v5, 0x1

    goto :goto_1a7

    :cond_1a6
    const/4 v5, 0x0

    :goto_1a7
    move v3, v5

    .line 390
    .local v3, "refork":I
    or-int v5, v2, v0

    or-int/2addr v5, v3

    move v6, v5

    .local v6, "nextState":I
    if-eq v5, v2, :cond_1b4

    .line 391
    invoke-virtual {v4, v2, v6}, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->compareAndSetPendingCount(II)Z

    move-result v5

    if-eqz v5, :cond_1bb

    .line 392
    :cond_1b4
    const/4 v0, 0x2

    .line 393
    move-object v15, v4

    .line 394
    if-eqz v3, :cond_1bb

    .line 395
    invoke-virtual {v4}, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    .line 397
    .end local v1    # "lt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .end local v3    # "refork":I
    .end local v6    # "nextState":I
    :cond_1bb
    goto :goto_1cb

    .line 398
    .end local v18    # "th":I
    .end local v19    # "h":I
    .end local v21    # "sum":J
    .local v1, "th":I
    .local v6, "sum":J
    .restart local v9    # "h":I
    :cond_1bc
    move/from16 v18, v1

    move-wide/from16 v21, v6

    move/from16 v19, v9

    .end local v1    # "th":I
    .end local v6    # "sum":J
    .end local v9    # "h":I
    .restart local v18    # "th":I
    .restart local v19    # "h":I
    .restart local v21    # "sum":J
    or-int v1, v2, v0

    invoke-virtual {v4, v2, v1}, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->compareAndSetPendingCount(II)Z

    move-result v1

    if-eqz v1, :cond_1cb

    .line 399
    goto :goto_1e0

    .line 400
    .end local v2    # "b":I
    :cond_1cb
    :goto_1cb
    move/from16 v1, v18

    move/from16 v9, v19

    move-wide/from16 v6, v21

    const/4 v3, 0x4

    goto/16 :goto_12d

    .line 345
    .end local v4    # "par":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .end local v18    # "th":I
    .end local v21    # "sum":J
    .restart local v1    # "th":I
    .restart local v2    # "b":I
    :cond_1d4
    move/from16 v18, v1

    .end local v1    # "th":I
    .restart local v18    # "th":I
    const/4 v5, 0x1

    goto/16 :goto_cf

    .line 295
    .end local v0    # "state":I
    .end local v2    # "b":I
    .end local v18    # "th":I
    .end local v19    # "h":I
    .restart local v1    # "th":I
    .restart local v9    # "h":I
    :cond_1d9
    move/from16 v18, v1

    move/from16 v19, v9

    .end local v1    # "th":I
    .end local v9    # "h":I
    .restart local v18    # "th":I
    .restart local v19    # "h":I
    goto :goto_1e0

    .end local v18    # "th":I
    .end local v19    # "h":I
    .restart local v1    # "th":I
    :cond_1de
    move/from16 v18, v1

    .line 403
    .end local v1    # "th":I
    .restart local v18    # "th":I
    :goto_1e0
    return-void

    .line 292
    .end local v10    # "l":I
    .end local v12    # "a":[J
    .end local v13    # "org":I
    .end local v14    # "fnc":I
    .end local v15    # "t":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .end local v18    # "th":I
    :cond_1e1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method
