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
.method public final whitelist core-platform-api test-api compute()V
    .registers 25

    .line 291
    move-object/from16 v0, p0

    iget-object v1, v0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->function:Ljava/util/function/LongBinaryOperator;

    move-object v11, v1

    .local v11, "fn":Ljava/util/function/LongBinaryOperator;
    if-eqz v1, :cond_1da

    iget-object v1, v0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->array:[J

    move-object v13, v1

    .local v13, "a":[J
    if-eqz v1, :cond_1d9

    .line 293
    iget v1, v0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->threshold:I

    .local v1, "th":I
    iget v14, v0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->origin:I

    .local v14, "org":I
    iget v15, v0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->fence:I

    .line 294
    .local v15, "fnc":I
    move-object/from16 v2, p0

    move-object v10, v2

    .line 295
    .local v10, "t":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    :goto_15
    iget v2, v10, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->lo:I

    move v9, v2

    .local v9, "l":I
    if-ltz v2, :cond_1d2

    iget v2, v10, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->hi:I

    move v8, v2

    .local v8, "h":I
    array-length v3, v13

    if-gt v2, v3, :cond_1cb

    .line 296
    sub-int v2, v8, v9

    const/4 v3, 0x1

    if-le v2, v1, :cond_d2

    .line 297
    iget-object v7, v10, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->left:Ljava/util/ArrayPrefixHelpers$LongCumulateTask;

    .local v7, "lt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    iget-object v6, v10, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->right:Ljava/util/ArrayPrefixHelpers$LongCumulateTask;

    .line 298
    .local v6, "rt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    if-nez v7, :cond_68

    .line 299
    add-int v2, v9, v8

    ushr-int/lit8 v16, v2, 0x1

    .line 300
    .local v16, "mid":I
    new-instance v5, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;

    move-object v2, v5

    move-object v3, v10

    move-object v4, v11

    move-object v12, v5

    move-object v5, v13

    move-object v0, v6

    .end local v6    # "rt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .local v0, "rt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    move v6, v14

    move-object/from16 v18, v0

    move-object v0, v7

    .end local v7    # "lt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .local v0, "lt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .local v18, "rt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    move v7, v15

    move/from16 v19, v8

    .end local v8    # "h":I
    .local v19, "h":I
    move v8, v1

    move/from16 v20, v9

    .end local v9    # "l":I
    .local v20, "l":I
    move/from16 v9, v16

    move-object/from16 v21, v0

    move-object v0, v10

    .end local v10    # "t":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .local v0, "t":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .local v21, "lt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    move/from16 v10, v19

    invoke-direct/range {v2 .. v10}, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$LongCumulateTask;Ljava/util/function/LongBinaryOperator;[JIIIII)V

    iput-object v12, v0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->right:Ljava/util/ArrayPrefixHelpers$LongCumulateTask;

    move-object/from16 v18, v12

    .line 302
    .local v12, "f":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    new-instance v10, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;

    move-object v2, v10

    move-object v3, v0

    move/from16 v9, v20

    move/from16 v22, v1

    move-object v1, v10

    .end local v1    # "th":I
    .local v22, "th":I
    move/from16 v10, v16

    invoke-direct/range {v2 .. v10}, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$LongCumulateTask;Ljava/util/function/LongBinaryOperator;[JIIIII)V

    iput-object v1, v0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->left:Ljava/util/ArrayPrefixHelpers$LongCumulateTask;

    move-object v7, v1

    .end local v21    # "lt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .restart local v7    # "lt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    move-object v0, v1

    .line 304
    .end local v16    # "mid":I
    move-object v10, v0

    move-object/from16 v6, v18

    move/from16 v5, v20

    goto/16 :goto_c7

    .line 306
    .end local v0    # "t":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .end local v12    # "f":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .end local v18    # "rt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .end local v19    # "h":I
    .end local v20    # "l":I
    .end local v22    # "th":I
    .restart local v1    # "th":I
    .restart local v6    # "rt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .restart local v8    # "h":I
    .restart local v9    # "l":I
    .restart local v10    # "t":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    :cond_68
    move/from16 v22, v1

    move-object/from16 v18, v6

    move-object/from16 v21, v7

    move/from16 v19, v8

    move/from16 v20, v9

    move-object v0, v10

    .end local v1    # "th":I
    .end local v6    # "rt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .end local v7    # "lt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .end local v8    # "h":I
    .end local v9    # "l":I
    .end local v10    # "t":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .restart local v0    # "t":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .restart local v18    # "rt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .restart local v19    # "h":I
    .restart local v20    # "l":I
    .restart local v21    # "lt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .restart local v22    # "th":I
    iget-wide v1, v0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->in:J

    .line 307
    .local v1, "pin":J
    move-object/from16 v4, v21

    .end local v21    # "lt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .local v4, "lt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    iput-wide v1, v4, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->in:J

    .line 308
    const/4 v5, 0x0

    move-object v0, v5

    move-object v6, v5

    .line 309
    .local v6, "f":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    if-eqz v18, :cond_a1

    .line 310
    iget-wide v7, v4, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->out:J

    .line 311
    .local v7, "lout":J
    move/from16 v5, v20

    .end local v20    # "l":I
    .local v5, "l":I
    if-ne v5, v14, :cond_86

    move-wide v9, v7

    goto :goto_8a

    .line 312
    :cond_86
    invoke-interface {v11, v1, v2, v7, v8}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v9

    :goto_8a
    move-object/from16 v12, v18

    .end local v18    # "rt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .local v12, "rt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    iput-wide v9, v12, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->in:J

    .line 314
    :cond_8e
    invoke-virtual {v12}, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->getPendingCount()I

    move-result v9

    move v10, v9

    .local v10, "c":I
    and-int/2addr v9, v3

    if-eqz v9, :cond_97

    .line 315
    goto :goto_a5

    .line 316
    :cond_97
    or-int/lit8 v9, v10, 0x1

    invoke-virtual {v12, v10, v9}, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->compareAndSetPendingCount(II)Z

    move-result v9

    if-eqz v9, :cond_8e

    .line 317
    move-object v0, v12

    .line 318
    goto :goto_a5

    .line 309
    .end local v5    # "l":I
    .end local v7    # "lout":J
    .end local v10    # "c":I
    .end local v12    # "rt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .restart local v18    # "rt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .restart local v20    # "l":I
    :cond_a1
    move-object/from16 v12, v18

    move/from16 v5, v20

    .line 323
    .end local v18    # "rt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .end local v20    # "l":I
    .restart local v5    # "l":I
    .restart local v12    # "rt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    :cond_a5
    :goto_a5
    invoke-virtual {v4}, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->getPendingCount()I

    move-result v7

    move v8, v7

    .local v8, "c":I
    and-int/2addr v7, v3

    if-eqz v7, :cond_af

    .line 324
    move-object v10, v0

    goto :goto_bc

    .line 325
    :cond_af
    or-int/lit8 v7, v8, 0x1

    invoke-virtual {v4, v8, v7}, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->compareAndSetPendingCount(II)Z

    move-result v7

    if-eqz v7, :cond_a5

    .line 326
    if-eqz v0, :cond_ba

    .line 327
    move-object v6, v0

    .line 328
    :cond_ba
    move-object v0, v4

    .line 329
    move-object v10, v0

    .line 332
    .end local v0    # "t":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .end local v8    # "c":I
    .local v10, "t":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    :goto_bc
    if-nez v10, :cond_c1

    .line 333
    move-object v9, v13

    goto/16 :goto_1d8

    .line 332
    :cond_c1
    move-object v7, v4

    move-object/from16 v23, v12

    move-object v12, v6

    move-object/from16 v6, v23

    .line 335
    .end local v1    # "pin":J
    .end local v4    # "lt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .local v6, "rt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .local v7, "lt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .local v12, "f":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    :goto_c7
    if-eqz v12, :cond_cc

    .line 336
    invoke-virtual {v12}, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    .line 337
    .end local v6    # "rt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .end local v7    # "lt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .end local v12    # "f":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    :cond_cc
    move-object/from16 v0, p0

    move/from16 v1, v22

    goto/16 :goto_15

    .line 296
    .end local v5    # "l":I
    .end local v19    # "h":I
    .end local v22    # "th":I
    .local v1, "th":I
    .local v8, "h":I
    .restart local v9    # "l":I
    :cond_d2
    move/from16 v22, v1

    move/from16 v19, v8

    move v5, v9

    move-object v0, v10

    .line 341
    .end local v1    # "th":I
    .end local v8    # "h":I
    .end local v9    # "l":I
    .end local v10    # "t":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .restart local v0    # "t":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .restart local v5    # "l":I
    .restart local v19    # "h":I
    .restart local v22    # "th":I
    :goto_d8
    invoke-virtual {v0}, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->getPendingCount()I

    move-result v1

    move v2, v1

    .local v2, "b":I
    const/4 v4, 0x4

    and-int/2addr v1, v4

    if-eqz v1, :cond_e4

    .line 342
    move-object v9, v13

    goto/16 :goto_1d7

    .line 343
    :cond_e4
    and-int/lit8 v1, v2, 0x1

    const/4 v6, 0x2

    if-eqz v1, :cond_eb

    move v1, v4

    goto :goto_f0

    .line 344
    :cond_eb
    if-le v5, v14, :cond_ef

    move v1, v6

    goto :goto_f0

    :cond_ef
    const/4 v1, 0x6

    :goto_f0
    nop

    .line 345
    .local v1, "state":I
    or-int v7, v2, v1

    invoke-virtual {v0, v2, v7}, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->compareAndSetPendingCount(II)Z

    move-result v7

    if-eqz v7, :cond_1c5

    .line 346
    nop

    .line 350
    .end local v2    # "b":I
    if-eq v1, v6, :cond_11c

    .line 352
    if-ne v5, v14, :cond_103

    .line 353
    aget-wide v7, v13, v14

    .line 354
    .local v7, "sum":J
    add-int/lit8 v2, v14, 0x1

    .local v2, "first":I
    goto :goto_106

    .line 357
    .end local v2    # "first":I
    .end local v7    # "sum":J
    :cond_103
    iget-wide v7, v0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->in:J

    .line 358
    .restart local v7    # "sum":J
    move v2, v5

    .line 360
    .restart local v2    # "first":I
    :goto_106
    move v9, v2

    .local v9, "i":I
    :goto_107
    move/from16 v10, v19

    .end local v19    # "h":I
    .local v10, "h":I
    if-ge v9, v10, :cond_11b

    .line 361
    aget-wide v3, v13, v9

    invoke-interface {v11, v7, v8, v3, v4}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v3

    move-wide v7, v3

    aput-wide v3, v13, v9

    .line 360
    add-int/lit8 v9, v9, 0x1

    move/from16 v19, v10

    const/4 v3, 0x1

    const/4 v4, 0x4

    goto :goto_107

    .line 362
    .end local v2    # "first":I
    .end local v9    # "i":I
    :cond_11b
    goto :goto_133

    .line 363
    .end local v7    # "sum":J
    .end local v10    # "h":I
    .restart local v19    # "h":I
    :cond_11c
    move/from16 v10, v19

    .end local v19    # "h":I
    .restart local v10    # "h":I
    if-ge v10, v15, :cond_131

    .line 364
    aget-wide v2, v13, v5

    .line 365
    .local v2, "sum":J
    add-int/lit8 v9, v5, 0x1

    move-wide v7, v2

    .end local v2    # "sum":J
    .restart local v7    # "sum":J
    .restart local v9    # "i":I
    :goto_125
    if-ge v9, v10, :cond_130

    .line 366
    aget-wide v2, v13, v9

    invoke-interface {v11, v7, v8, v2, v3}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v7

    .line 365
    add-int/lit8 v9, v9, 0x1

    goto :goto_125

    .end local v9    # "i":I
    :cond_130
    goto :goto_133

    .line 369
    .end local v7    # "sum":J
    :cond_131
    iget-wide v7, v0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->in:J

    .line 370
    .restart local v7    # "sum":J
    :goto_133
    iput-wide v7, v0, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->out:J

    .line 372
    :goto_135
    invoke-virtual {v0}, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->getCompleter()Ljava/util/concurrent/CountedCompleter;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;

    move-object v3, v2

    .local v3, "par":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    if-nez v2, :cond_14b

    .line 373
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_148

    .line 374
    invoke-virtual {v0}, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->quietlyComplete()V

    move-object v9, v13

    goto/16 :goto_1bd

    .line 373
    :cond_148
    move-object v9, v13

    goto/16 :goto_1bd

    .line 377
    :cond_14b
    invoke-virtual {v3}, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->getPendingCount()I

    move-result v2

    .line 378
    .local v2, "b":I
    and-int v4, v2, v1

    const/4 v9, 0x4

    and-int/2addr v4, v9

    if-eqz v4, :cond_15b

    .line 379
    move-object v0, v3

    move-wide/from16 v18, v7

    move-object v9, v13

    goto/16 :goto_1bf

    .line 380
    :cond_15b
    and-int v4, v2, v1

    and-int/2addr v4, v6

    if-eqz v4, :cond_1b1

    .line 382
    iget-object v4, v3, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->left:Ljava/util/ArrayPrefixHelpers$LongCumulateTask;

    move-object/from16 v16, v4

    .local v16, "lt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    if-eqz v4, :cond_18d

    iget-object v4, v3, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->right:Ljava/util/ArrayPrefixHelpers$LongCumulateTask;

    move-object/from16 v17, v4

    .local v17, "rt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    if-eqz v4, :cond_185

    .line 384
    move-wide/from16 v18, v7

    move-object/from16 v4, v16

    .end local v7    # "sum":J
    .end local v16    # "lt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .restart local v4    # "lt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .local v18, "sum":J
    iget-wide v6, v4, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->out:J

    .line 385
    .local v6, "lout":J
    move-object/from16 v8, v17

    .end local v17    # "rt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .local v8, "rt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    iget v9, v8, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->hi:I

    if-ne v9, v15, :cond_17b

    move-object v9, v13

    move-wide v12, v6

    goto :goto_182

    .line 386
    :cond_17b
    move-object v9, v13

    .end local v13    # "a":[J
    .local v9, "a":[J
    iget-wide v12, v8, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->out:J

    invoke-interface {v11, v6, v7, v12, v13}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v12

    :goto_182
    iput-wide v12, v3, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->out:J

    goto :goto_192

    .line 382
    .end local v4    # "lt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .end local v6    # "lout":J
    .end local v8    # "rt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .end local v9    # "a":[J
    .end local v18    # "sum":J
    .restart local v7    # "sum":J
    .restart local v13    # "a":[J
    .restart local v16    # "lt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .restart local v17    # "rt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    :cond_185
    move-wide/from16 v18, v7

    move-object v9, v13

    move-object/from16 v4, v16

    move-object/from16 v8, v17

    .end local v7    # "sum":J
    .end local v13    # "a":[J
    .end local v16    # "lt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .end local v17    # "rt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .restart local v4    # "lt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .restart local v8    # "rt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .restart local v9    # "a":[J
    .restart local v18    # "sum":J
    goto :goto_192

    .end local v4    # "lt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .end local v8    # "rt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .end local v9    # "a":[J
    .end local v18    # "sum":J
    .restart local v7    # "sum":J
    .restart local v13    # "a":[J
    .restart local v16    # "lt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    :cond_18d
    move-wide/from16 v18, v7

    move-object v9, v13

    move-object/from16 v4, v16

    .line 388
    .end local v7    # "sum":J
    .end local v13    # "a":[J
    .end local v16    # "lt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .restart local v4    # "lt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .restart local v9    # "a":[J
    .restart local v18    # "sum":J
    :goto_192
    and-int/lit8 v6, v2, 0x1

    if-nez v6, :cond_19c

    iget v6, v3, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->lo:I

    if-ne v6, v14, :cond_19c

    .line 389
    const/4 v6, 0x1

    goto :goto_19d

    :cond_19c
    const/4 v6, 0x0

    .line 390
    .local v6, "refork":I
    :goto_19d
    or-int v7, v2, v1

    or-int/2addr v7, v6

    move v8, v7

    .local v8, "nextState":I
    if-eq v7, v2, :cond_1a9

    .line 391
    invoke-virtual {v3, v2, v8}, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->compareAndSetPendingCount(II)Z

    move-result v7

    if-eqz v7, :cond_1b0

    .line 392
    :cond_1a9
    const/4 v1, 0x2

    .line 393
    move-object v0, v3

    .line 394
    if-eqz v6, :cond_1b0

    .line 395
    invoke-virtual {v3}, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    .line 397
    .end local v4    # "lt":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .end local v6    # "refork":I
    .end local v8    # "nextState":I
    :cond_1b0
    goto :goto_1bf

    .line 398
    .end local v9    # "a":[J
    .end local v18    # "sum":J
    .restart local v7    # "sum":J
    .restart local v13    # "a":[J
    :cond_1b1
    move-wide/from16 v18, v7

    move-object v9, v13

    .end local v7    # "sum":J
    .end local v13    # "a":[J
    .restart local v9    # "a":[J
    .restart local v18    # "sum":J
    or-int v4, v2, v1

    invoke-virtual {v3, v2, v4}, Ljava/util/ArrayPrefixHelpers$LongCumulateTask;->compareAndSetPendingCount(II)Z

    move-result v4

    if-eqz v4, :cond_1bf

    .line 399
    nop

    .line 403
    .end local v1    # "state":I
    .end local v2    # "b":I
    .end local v3    # "par":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .end local v9    # "a":[J
    .end local v10    # "h":I
    .end local v18    # "sum":J
    .restart local v13    # "a":[J
    :goto_1bd
    move-object v10, v0

    .end local v13    # "a":[J
    .restart local v9    # "a":[J
    goto :goto_1d8

    .line 400
    .restart local v1    # "state":I
    .restart local v3    # "par":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .restart local v10    # "h":I
    .restart local v18    # "sum":J
    :cond_1bf
    :goto_1bf
    move-object v13, v9

    move-wide/from16 v7, v18

    const/4 v6, 0x2

    goto/16 :goto_135

    .line 345
    .end local v3    # "par":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .end local v9    # "a":[J
    .end local v10    # "h":I
    .end local v18    # "sum":J
    .restart local v2    # "b":I
    .restart local v13    # "a":[J
    .restart local v19    # "h":I
    :cond_1c5
    move-object v9, v13

    move/from16 v10, v19

    .end local v13    # "a":[J
    .end local v19    # "h":I
    .restart local v9    # "a":[J
    .restart local v10    # "h":I
    const/4 v3, 0x1

    goto/16 :goto_d8

    .line 295
    .end local v0    # "t":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .end local v2    # "b":I
    .end local v5    # "l":I
    .end local v22    # "th":I
    .local v1, "th":I
    .local v8, "h":I
    .local v9, "l":I
    .local v10, "t":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .restart local v13    # "a":[J
    :cond_1cb
    move/from16 v22, v1

    move v5, v9

    move-object v0, v10

    move-object v9, v13

    move v10, v8

    .end local v1    # "th":I
    .end local v8    # "h":I
    .end local v13    # "a":[J
    .restart local v0    # "t":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .restart local v5    # "l":I
    .local v9, "a":[J
    .local v10, "h":I
    .restart local v22    # "th":I
    goto :goto_1d7

    .end local v0    # "t":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .end local v5    # "l":I
    .end local v22    # "th":I
    .restart local v1    # "th":I
    .local v9, "l":I
    .local v10, "t":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .restart local v13    # "a":[J
    :cond_1d2
    move/from16 v22, v1

    move v5, v9

    move-object v0, v10

    move-object v9, v13

    .line 403
    .end local v1    # "th":I
    .end local v10    # "t":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .end local v13    # "a":[J
    .restart local v0    # "t":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .restart local v5    # "l":I
    .local v9, "a":[J
    .restart local v22    # "th":I
    :goto_1d7
    move-object v10, v0

    .end local v0    # "t":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .restart local v10    # "t":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    :goto_1d8
    return-void

    .line 291
    .end local v5    # "l":I
    .end local v9    # "a":[J
    .end local v10    # "t":Ljava/util/ArrayPrefixHelpers$LongCumulateTask;
    .end local v14    # "org":I
    .end local v15    # "fnc":I
    .end local v22    # "th":I
    .restart local v13    # "a":[J
    :cond_1d9
    move-object v9, v13

    .line 292
    .end local v13    # "a":[J
    :cond_1da
    const/4 v0, 0x0

    throw v0
.end method
