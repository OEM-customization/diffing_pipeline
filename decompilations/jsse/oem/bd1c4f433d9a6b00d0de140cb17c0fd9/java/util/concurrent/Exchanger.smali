.class public Ljava/util/concurrent/Exchanger;
.super Ljava/lang/Object;
.source "Exchanger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/Exchanger$Node;,
        Ljava/util/concurrent/Exchanger$Participant;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final ABASE:I

.field private static final ASHIFT:I = 0x7

.field private static final BLOCKER:J

.field private static final BOUND:J

.field static final FULL:I

.field private static final MATCH:J

.field private static final MMASK:I = 0xff

.field private static final NCPU:I

.field private static final NULL_ITEM:Ljava/lang/Object;

.field private static final SEQ:I = 0x100

.field private static final SLOT:J

.field private static final SPINS:I = 0x400

.field private static final TIMED_OUT:Ljava/lang/Object;

.field private static final U:Lsun/misc/Unsafe;


# instance fields
.field private volatile arena:[Ljava/util/concurrent/Exchanger$Node;

.field private volatile bound:I

.field private final participant:Ljava/util/concurrent/Exchanger$Participant;

.field private volatile slot:Ljava/util/concurrent/Exchanger$Node;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 275
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v2

    sput v2, Ljava/util/concurrent/Exchanger;->NCPU:I

    .line 282
    sget v2, Ljava/util/concurrent/Exchanger;->NCPU:I

    const/16 v3, 0x1fe

    if-lt v2, v3, :cond_8d

    const/16 v2, 0xff

    :goto_12
    sput v2, Ljava/util/concurrent/Exchanger;->FULL:I

    .line 296
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Ljava/util/concurrent/Exchanger;->NULL_ITEM:Ljava/lang/Object;

    .line 303
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Ljava/util/concurrent/Exchanger;->TIMED_OUT:Ljava/lang/Object;

    .line 628
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v2

    sput-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    .line 636
    :try_start_28
    sget-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    .line 637
    const-class v3, Ljava/util/concurrent/Exchanger;

    const-string/jumbo v4, "bound"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 636
    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/Exchanger;->BOUND:J

    .line 638
    sget-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    .line 639
    const-class v3, Ljava/util/concurrent/Exchanger;

    const-string/jumbo v4, "slot"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 638
    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/Exchanger;->SLOT:J

    .line 641
    sget-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    .line 642
    const-class v3, Ljava/util/concurrent/Exchanger$Node;

    const-string/jumbo v4, "match"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 641
    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/Exchanger;->MATCH:J

    .line 644
    sget-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    .line 645
    const-class v3, Ljava/lang/Thread;

    const-string/jumbo v4, "parkBlocker"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 644
    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/Exchanger;->BLOCKER:J

    .line 647
    sget-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    const-class v3, [Ljava/util/concurrent/Exchanger$Node;

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v1

    .line 648
    .local v1, "scale":I
    add-int/lit8 v2, v1, -0x1

    and-int/2addr v2, v1

    if-nez v2, :cond_7d

    const/16 v2, 0x80

    if-le v1, v2, :cond_92

    .line 649
    :cond_7d
    new-instance v2, Ljava/lang/Error;

    const-string/jumbo v3, "Unsupported array scale"

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_86
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_28 .. :try_end_86} :catch_86

    .line 652
    :catch_86
    move-exception v0

    .line 653
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 282
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    .end local v1    # "scale":I
    :cond_8d
    sget v2, Ljava/util/concurrent/Exchanger;->NCPU:I

    ushr-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 651
    .restart local v1    # "scale":I
    :cond_92
    :try_start_92
    sget-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    const-class v3, [Ljava/util/concurrent/Exchanger$Node;

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v2

    add-int/lit16 v2, v2, 0x80

    sput v2, Ljava/util/concurrent/Exchanger;->ABASE:I
    :try_end_9e
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_92 .. :try_end_9e} :catch_86

    .line 102
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 520
    .local p0, "this":Ljava/util/concurrent/Exchanger;, "Ljava/util/concurrent/Exchanger<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 521
    new-instance v0, Ljava/util/concurrent/Exchanger$Participant;

    invoke-direct {v0}, Ljava/util/concurrent/Exchanger$Participant;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/Exchanger;->participant:Ljava/util/concurrent/Exchanger$Participant;

    .line 522
    return-void
.end method

.method private final arenaExchange(Ljava/lang/Object;ZJ)Ljava/lang/Object;
    .registers 36
    .param p1, "item"    # Ljava/lang/Object;
    .param p2, "timed"    # Z
    .param p3, "ns"    # J

    .prologue
    .line 359
    .local p0, "this":Ljava/util/concurrent/Exchanger;, "Ljava/util/concurrent/Exchanger<TV;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/util/concurrent/Exchanger;->arena:[Ljava/util/concurrent/Exchanger$Node;

    .line 360
    .local v3, "a":[Ljava/util/concurrent/Exchanger$Node;
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/concurrent/Exchanger;->participant:Ljava/util/concurrent/Exchanger$Participant;

    invoke-virtual {v2}, Ljava/util/concurrent/Exchanger$Participant;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/concurrent/Exchanger$Node;

    .line 361
    .local v13, "p":Ljava/util/concurrent/Exchanger$Node;
    iget v0, v13, Ljava/util/concurrent/Exchanger$Node;->index:I

    move/from16 v24, v0

    .line 363
    .local v24, "i":I
    :cond_12
    :goto_12
    sget-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    shl-int/lit8 v7, v24, 0x7

    sget v8, Ljava/util/concurrent/Exchanger;->ABASE:I

    add-int/2addr v7, v8

    int-to-long v4, v7

    .local v4, "j":J
    int-to-long v8, v7

    invoke-virtual {v2, v3, v8, v9}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/Exchanger$Node;

    .line 364
    .local v6, "q":Ljava/util/concurrent/Exchanger$Node;
    if-eqz v6, :cond_42

    sget-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 365
    iget-object v0, v6, Ljava/util/concurrent/Exchanger$Node;->item:Ljava/lang/Object;

    move-object/from16 v28, v0

    .line 366
    .local v28, "v":Ljava/lang/Object;
    move-object/from16 v0, p1

    iput-object v0, v6, Ljava/util/concurrent/Exchanger$Node;->match:Ljava/lang/Object;

    .line 367
    iget-object v0, v6, Ljava/util/concurrent/Exchanger$Node;->parked:Ljava/lang/Thread;

    move-object/from16 v29, v0

    .line 368
    .local v29, "w":Ljava/lang/Thread;
    if-eqz v29, :cond_41

    .line 369
    sget-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    .line 370
    :cond_41
    return-object v28

    .line 372
    .end local v28    # "v":Ljava/lang/Object;
    .end local v29    # "w":Ljava/lang/Thread;
    :cond_42
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/concurrent/Exchanger;->bound:I

    move/from16 v18, v0

    .local v18, "b":I
    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    .local v25, "m":I
    move/from16 v0, v24

    move/from16 v1, v25

    if-gt v0, v1, :cond_156

    if-nez v6, :cond_156

    .line 373
    move-object/from16 v0, p1

    iput-object v0, v13, Ljava/util/concurrent/Exchanger$Node;->item:Ljava/lang/Object;

    .line 374
    sget-object v8, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    const/4 v12, 0x0

    move-object v9, v3

    move-wide v10, v4

    invoke-virtual/range {v8 .. v13}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_151

    .line 375
    if-eqz p2, :cond_8f

    if-nez v25, :cond_8f

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    add-long v22, v8, p3

    .line 376
    .local v22, "end":J
    :goto_6f
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v27

    .line 377
    .local v27, "t":Ljava/lang/Thread;
    iget v0, v13, Ljava/util/concurrent/Exchanger$Node;->hash:I

    move/from16 v21, v0

    .local v21, "h":I
    const/16 v26, 0x400

    .line 378
    .local v26, "spins":I
    :cond_79
    :goto_79
    iget-object v0, v13, Ljava/util/concurrent/Exchanger$Node;->match:Ljava/lang/Object;

    move-object/from16 v28, v0

    .line 379
    .restart local v28    # "v":Ljava/lang/Object;
    if-eqz v28, :cond_92

    .line 380
    sget-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    sget-wide v8, Ljava/util/concurrent/Exchanger;->MATCH:J

    const/4 v7, 0x0

    invoke-virtual {v2, v13, v8, v9, v7}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 381
    const/4 v2, 0x0

    iput-object v2, v13, Ljava/util/concurrent/Exchanger$Node;->item:Ljava/lang/Object;

    .line 382
    move/from16 v0, v21

    iput v0, v13, Ljava/util/concurrent/Exchanger$Node;->hash:I

    .line 383
    return-object v28

    .line 375
    .end local v21    # "h":I
    .end local v22    # "end":J
    .end local v26    # "spins":I
    .end local v27    # "t":Ljava/lang/Thread;
    .end local v28    # "v":Ljava/lang/Object;
    :cond_8f
    const-wide/16 v22, 0x0

    .restart local v22    # "end":J
    goto :goto_6f

    .line 385
    .restart local v21    # "h":I
    .restart local v26    # "spins":I
    .restart local v27    # "t":Ljava/lang/Thread;
    .restart local v28    # "v":Ljava/lang/Object;
    :cond_92
    if-lez v26, :cond_ba

    .line 386
    shl-int/lit8 v2, v21, 0x1

    xor-int v21, v21, v2

    ushr-int/lit8 v2, v21, 0x3

    xor-int v21, v21, v2

    shl-int/lit8 v2, v21, 0xa

    xor-int v21, v21, v2

    .line 387
    if-nez v21, :cond_ac

    .line 388
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    long-to-int v2, v8

    or-int/lit16 v0, v2, 0x400

    move/from16 v21, v0

    goto :goto_79

    .line 389
    :cond_ac
    if-gez v21, :cond_79

    .line 390
    add-int/lit8 v26, v26, -0x1

    move/from16 v0, v26

    and-int/lit16 v2, v0, 0x1ff

    if-nez v2, :cond_79

    .line 391
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_79

    .line 393
    :cond_ba
    sget-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    invoke-virtual {v2, v3, v4, v5}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v13, :cond_c5

    .line 394
    const/16 v26, 0x400

    goto :goto_79

    .line 395
    :cond_c5
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_109

    if-nez v25, :cond_109

    .line 396
    if-eqz p2, :cond_db

    .line 397
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    sub-long p3, v22, v8

    const-wide/16 v8, 0x0

    cmp-long v2, p3, v8

    if-lez v2, :cond_109

    .line 398
    :cond_db
    sget-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    sget-wide v8, Ljava/util/concurrent/Exchanger;->BLOCKER:J

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v2, v0, v8, v9, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 399
    move-object/from16 v0, v27

    iput-object v0, v13, Ljava/util/concurrent/Exchanger$Node;->parked:Ljava/lang/Thread;

    .line 400
    sget-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    invoke-virtual {v2, v3, v4, v5}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v13, :cond_fa

    .line 401
    sget-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    const/4 v7, 0x0

    move-wide/from16 v0, p3

    invoke-virtual {v2, v7, v0, v1}, Lsun/misc/Unsafe;->park(ZJ)V

    .line 402
    :cond_fa
    const/4 v2, 0x0

    iput-object v2, v13, Ljava/util/concurrent/Exchanger$Node;->parked:Ljava/lang/Thread;

    .line 403
    sget-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    sget-wide v8, Ljava/util/concurrent/Exchanger;->BLOCKER:J

    const/4 v7, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v2, v0, v8, v9, v7}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_79

    .line 405
    :cond_109
    sget-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    invoke-virtual {v2, v3, v4, v5}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v13, :cond_79

    .line 406
    sget-object v9, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    const/4 v14, 0x0

    move-object v10, v3

    move-wide v11, v4

    invoke-virtual/range {v9 .. v14}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 405
    if-eqz v2, :cond_79

    .line 407
    if-eqz v25, :cond_12d

    .line 408
    sget-object v14, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    sget-wide v16, Ljava/util/concurrent/Exchanger;->BOUND:J

    move/from16 v0, v18

    add-int/lit16 v2, v0, 0x100

    add-int/lit8 v19, v2, -0x1

    move-object/from16 v15, p0

    invoke-virtual/range {v14 .. v19}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    .line 409
    :cond_12d
    const/4 v2, 0x0

    iput-object v2, v13, Ljava/util/concurrent/Exchanger$Node;->item:Ljava/lang/Object;

    .line 410
    move/from16 v0, v21

    iput v0, v13, Ljava/util/concurrent/Exchanger$Node;->hash:I

    .line 411
    iget v2, v13, Ljava/util/concurrent/Exchanger$Node;->index:I

    ushr-int/lit8 v24, v2, 0x1

    move/from16 v0, v24

    iput v0, v13, Ljava/util/concurrent/Exchanger$Node;->index:I

    .line 412
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_144

    .line 413
    const/4 v2, 0x0

    return-object v2

    .line 414
    :cond_144
    if-eqz p2, :cond_12

    if-nez v25, :cond_12

    const-wide/16 v8, 0x0

    cmp-long v2, p3, v8

    if-gtz v2, :cond_12

    .line 415
    sget-object v2, Ljava/util/concurrent/Exchanger;->TIMED_OUT:Ljava/lang/Object;

    return-object v2

    .line 421
    .end local v21    # "h":I
    .end local v22    # "end":J
    .end local v26    # "spins":I
    .end local v27    # "t":Ljava/lang/Thread;
    .end local v28    # "v":Ljava/lang/Object;
    :cond_151
    const/4 v2, 0x0

    iput-object v2, v13, Ljava/util/concurrent/Exchanger$Node;->item:Ljava/lang/Object;

    goto/16 :goto_12

    .line 424
    :cond_156
    iget v2, v13, Ljava/util/concurrent/Exchanger$Node;->bound:I

    move/from16 v0, v18

    if-eq v2, v0, :cond_176

    .line 425
    move/from16 v0, v18

    iput v0, v13, Ljava/util/concurrent/Exchanger$Node;->bound:I

    .line 426
    const/4 v2, 0x0

    iput v2, v13, Ljava/util/concurrent/Exchanger$Node;->collides:I

    .line 427
    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_16b

    if-nez v25, :cond_173

    :cond_16b
    move/from16 v24, v25

    .line 436
    :goto_16d
    move/from16 v0, v24

    iput v0, v13, Ljava/util/concurrent/Exchanger$Node;->index:I

    goto/16 :goto_12

    .line 427
    :cond_173
    add-int/lit8 v24, v25, -0x1

    goto :goto_16d

    .line 429
    :cond_176
    iget v0, v13, Ljava/util/concurrent/Exchanger$Node;->collides:I

    move/from16 v20, v0

    .local v20, "c":I
    move/from16 v0, v20

    move/from16 v1, v25

    if-lt v0, v1, :cond_186

    sget v2, Ljava/util/concurrent/Exchanger;->FULL:I

    move/from16 v0, v25

    if-ne v0, v2, :cond_18f

    .line 431
    :cond_186
    add-int/lit8 v2, v20, 0x1

    iput v2, v13, Ljava/util/concurrent/Exchanger$Node;->collides:I

    .line 432
    if-nez v24, :cond_1a6

    move/from16 v24, v25

    goto :goto_16d

    .line 430
    :cond_18f
    sget-object v14, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    sget-wide v16, Ljava/util/concurrent/Exchanger;->BOUND:J

    move/from16 v0, v18

    add-int/lit16 v2, v0, 0x100

    add-int/lit8 v19, v2, 0x1

    move-object/from16 v15, p0

    invoke-virtual/range {v14 .. v19}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 429
    if-nez v2, :cond_186

    .line 435
    add-int/lit8 v24, v25, 0x1

    goto :goto_16d

    .line 432
    :cond_1a6
    add-int/lit8 v24, v24, -0x1

    goto :goto_16d
.end method

.method private final slotExchange(Ljava/lang/Object;ZJ)Ljava/lang/Object;
    .registers 28
    .param p1, "item"    # Ljava/lang/Object;
    .param p2, "timed"    # Z
    .param p3, "ns"    # J

    .prologue
    .line 452
    .local p0, "this":Ljava/util/concurrent/Exchanger;, "Ljava/util/concurrent/Exchanger<TV;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/concurrent/Exchanger;->participant:Ljava/util/concurrent/Exchanger$Participant;

    invoke-virtual {v2}, Ljava/util/concurrent/Exchanger$Participant;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/concurrent/Exchanger$Node;

    .line 453
    .local v17, "p":Ljava/util/concurrent/Exchanger$Node;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v19

    .line 454
    .local v19, "t":Ljava/lang/Thread;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 455
    const/4 v2, 0x0

    return-object v2

    .line 468
    .local v6, "q":Ljava/util/concurrent/Exchanger$Node;
    :cond_16
    sget v2, Ljava/util/concurrent/Exchanger;->NCPU:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_3c

    move-object/from16 v0, p0

    iget v2, v0, Ljava/util/concurrent/Exchanger;->bound:I

    if-nez v2, :cond_3c

    .line 469
    sget-object v8, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    sget-wide v10, Ljava/util/concurrent/Exchanger;->BOUND:J

    const/4 v12, 0x0

    const/16 v13, 0x100

    move-object/from16 v9, p0

    invoke-virtual/range {v8 .. v13}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v2

    .line 468
    if-eqz v2, :cond_3c

    .line 470
    sget v2, Ljava/util/concurrent/Exchanger;->FULL:I

    add-int/lit8 v2, v2, 0x2

    shl-int/lit8 v2, v2, 0x7

    new-array v2, v2, [Ljava/util/concurrent/Exchanger$Node;

    move-object/from16 v0, p0

    iput-object v2, v0, Ljava/util/concurrent/Exchanger;->arena:[Ljava/util/concurrent/Exchanger$Node;

    .line 458
    .end local v6    # "q":Ljava/util/concurrent/Exchanger$Node;
    :cond_3c
    :goto_3c
    move-object/from16 v0, p0

    iget-object v6, v0, Ljava/util/concurrent/Exchanger;->slot:Ljava/util/concurrent/Exchanger$Node;

    .restart local v6    # "q":Ljava/util/concurrent/Exchanger$Node;
    if-eqz v6, :cond_65

    .line 459
    sget-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/Exchanger;->SLOT:J

    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 460
    iget-object v0, v6, Ljava/util/concurrent/Exchanger$Node;->item:Ljava/lang/Object;

    move-object/from16 v20, v0

    .line 461
    .local v20, "v":Ljava/lang/Object;
    move-object/from16 v0, p1

    iput-object v0, v6, Ljava/util/concurrent/Exchanger$Node;->match:Ljava/lang/Object;

    .line 462
    iget-object v0, v6, Ljava/util/concurrent/Exchanger$Node;->parked:Ljava/lang/Thread;

    move-object/from16 v21, v0

    .line 463
    .local v21, "w":Ljava/lang/Thread;
    if-eqz v21, :cond_64

    .line 464
    sget-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    .line 465
    :cond_64
    return-object v20

    .line 472
    .end local v20    # "v":Ljava/lang/Object;
    .end local v21    # "w":Ljava/lang/Thread;
    :cond_65
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/concurrent/Exchanger;->arena:[Ljava/util/concurrent/Exchanger$Node;

    if-eqz v2, :cond_6d

    .line 473
    const/4 v2, 0x0

    return-object v2

    .line 475
    :cond_6d
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    iput-object v0, v1, Ljava/util/concurrent/Exchanger$Node;->item:Ljava/lang/Object;

    .line 476
    sget-object v8, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    sget-wide v10, Ljava/util/concurrent/Exchanger;->SLOT:J

    const/4 v12, 0x0

    move-object/from16 v9, p0

    move-object/from16 v13, v17

    invoke-virtual/range {v8 .. v13}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b9

    .line 483
    move-object/from16 v0, v17

    iget v0, v0, Ljava/util/concurrent/Exchanger$Node;->hash:I

    move/from16 v16, v0

    .line 484
    .local v16, "h":I
    if-eqz p2, :cond_c0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    add-long v14, v2, p3

    .line 485
    .local v14, "end":J
    :goto_90
    sget v2, Ljava/util/concurrent/Exchanger;->NCPU:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_c3

    const/16 v18, 0x400

    .line 487
    .local v18, "spins":I
    :cond_97
    :goto_97
    move-object/from16 v0, v17

    iget-object v0, v0, Ljava/util/concurrent/Exchanger$Node;->match:Ljava/lang/Object;

    move-object/from16 v20, v0

    .restart local v20    # "v":Ljava/lang/Object;
    if-nez v20, :cond_14c

    .line 488
    if-lez v18, :cond_d4

    .line 489
    shl-int/lit8 v2, v16, 0x1

    xor-int v16, v16, v2

    ushr-int/lit8 v2, v16, 0x3

    xor-int v16, v16, v2

    shl-int/lit8 v2, v16, 0xa

    xor-int v16, v16, v2

    .line 490
    if-nez v16, :cond_c6

    .line 491
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    long-to-int v2, v2

    or-int/lit16 v0, v2, 0x400

    move/from16 v16, v0

    goto :goto_97

    .line 478
    .end local v14    # "end":J
    .end local v16    # "h":I
    .end local v18    # "spins":I
    .end local v20    # "v":Ljava/lang/Object;
    :cond_b9
    const/4 v2, 0x0

    move-object/from16 v0, v17

    iput-object v2, v0, Ljava/util/concurrent/Exchanger$Node;->item:Ljava/lang/Object;

    goto/16 :goto_3c

    .line 484
    .restart local v16    # "h":I
    :cond_c0
    const-wide/16 v14, 0x0

    .restart local v14    # "end":J
    goto :goto_90

    .line 485
    :cond_c3
    const/16 v18, 0x1

    .restart local v18    # "spins":I
    goto :goto_97

    .line 492
    .restart local v20    # "v":Ljava/lang/Object;
    :cond_c6
    if-gez v16, :cond_97

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    and-int/lit16 v2, v0, 0x1ff

    if-nez v2, :cond_97

    .line 493
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_97

    .line 495
    :cond_d4
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/concurrent/Exchanger;->slot:Ljava/util/concurrent/Exchanger$Node;

    move-object/from16 v0, v17

    if-eq v2, v0, :cond_df

    .line 496
    const/16 v18, 0x400

    goto :goto_97

    .line 497
    :cond_df
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_12b

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/concurrent/Exchanger;->arena:[Ljava/util/concurrent/Exchanger$Node;

    if-nez v2, :cond_12b

    .line 498
    if-eqz p2, :cond_f9

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long p3, v14, v2

    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-lez v2, :cond_12b

    .line 499
    :cond_f9
    sget-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/Exchanger;->BLOCKER:J

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v2, v0, v4, v5, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 500
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    iput-object v0, v1, Ljava/util/concurrent/Exchanger$Node;->parked:Ljava/lang/Thread;

    .line 501
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/concurrent/Exchanger;->slot:Ljava/util/concurrent/Exchanger$Node;

    move-object/from16 v0, v17

    if-ne v2, v0, :cond_11a

    .line 502
    sget-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    const/4 v3, 0x0

    move-wide/from16 v0, p3

    invoke-virtual {v2, v3, v0, v1}, Lsun/misc/Unsafe;->park(ZJ)V

    .line 503
    :cond_11a
    const/4 v2, 0x0

    move-object/from16 v0, v17

    iput-object v2, v0, Ljava/util/concurrent/Exchanger$Node;->parked:Ljava/lang/Thread;

    .line 504
    sget-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/Exchanger;->BLOCKER:J

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v4, v5, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_97

    .line 506
    :cond_12b
    sget-object v8, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    sget-wide v10, Ljava/util/concurrent/Exchanger;->SLOT:J

    const/4 v13, 0x0

    move-object/from16 v9, p0

    move-object/from16 v12, v17

    invoke-virtual/range {v8 .. v13}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_97

    .line 507
    if-eqz p2, :cond_162

    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-gtz v2, :cond_162

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_162

    sget-object v20, Ljava/util/concurrent/Exchanger;->TIMED_OUT:Ljava/lang/Object;

    .line 511
    .end local v20    # "v":Ljava/lang/Object;
    :cond_14c
    :goto_14c
    sget-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/Exchanger;->MATCH:J

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v4, v5, v3}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 512
    const/4 v2, 0x0

    move-object/from16 v0, v17

    iput-object v2, v0, Ljava/util/concurrent/Exchanger$Node;->item:Ljava/lang/Object;

    .line 513
    move/from16 v0, v16

    move-object/from16 v1, v17

    iput v0, v1, Ljava/util/concurrent/Exchanger$Node;->hash:I

    .line 514
    return-object v20

    .line 507
    .restart local v20    # "v":Ljava/lang/Object;
    :cond_162
    const/16 v20, 0x0

    goto :goto_14c
.end method


# virtual methods
.method public exchange(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/Exchanger;, "Ljava/util/concurrent/Exchanger<TV;>;"
    .local p1, "x":Ljava/lang/Object;, "TV;"
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 560
    if-nez p1, :cond_24

    sget-object v0, Ljava/util/concurrent/Exchanger;->NULL_ITEM:Ljava/lang/Object;

    .line 561
    .local v0, "item":Ljava/lang/Object;
    :goto_8
    iget-object v3, p0, Ljava/util/concurrent/Exchanger;->arena:[Ljava/util/concurrent/Exchanger$Node;

    if-nez v3, :cond_12

    .line 562
    invoke-direct {p0, v0, v4, v6, v7}, Ljava/util/concurrent/Exchanger;->slotExchange(Ljava/lang/Object;ZJ)Ljava/lang/Object;

    move-result-object v1

    .local v1, "v":Ljava/lang/Object;
    if-nez v1, :cond_26

    .line 563
    .end local v1    # "v":Ljava/lang/Object;
    :cond_12
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-nez v3, :cond_1e

    .line 564
    invoke-direct {p0, v0, v4, v6, v7}, Ljava/util/concurrent/Exchanger;->arenaExchange(Ljava/lang/Object;ZJ)Ljava/lang/Object;

    move-result-object v1

    .restart local v1    # "v":Ljava/lang/Object;
    if-nez v1, :cond_26

    .line 565
    .end local v1    # "v":Ljava/lang/Object;
    :cond_1e
    new-instance v2, Ljava/lang/InterruptedException;

    invoke-direct {v2}, Ljava/lang/InterruptedException;-><init>()V

    throw v2

    .line 560
    .end local v0    # "item":Ljava/lang/Object;
    :cond_24
    move-object v0, p1

    .restart local v0    # "item":Ljava/lang/Object;
    goto :goto_8

    .line 566
    .restart local v1    # "v":Ljava/lang/Object;
    :cond_26
    sget-object v3, Ljava/util/concurrent/Exchanger;->NULL_ITEM:Ljava/lang/Object;

    if-ne v1, v3, :cond_2b

    move-object v1, v2

    .end local v1    # "v":Ljava/lang/Object;
    :cond_2b
    return-object v1
.end method

.method public exchange(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 13
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/Exchanger;, "Ljava/util/concurrent/Exchanger<TV;>;"
    .local p1, "x":Ljava/lang/Object;, "TV;"
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 615
    if-nez p1, :cond_26

    sget-object v0, Ljava/util/concurrent/Exchanger;->NULL_ITEM:Ljava/lang/Object;

    .line 616
    .local v0, "item":Ljava/lang/Object;
    :goto_6
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    .line 617
    .local v2, "ns":J
    iget-object v5, p0, Ljava/util/concurrent/Exchanger;->arena:[Ljava/util/concurrent/Exchanger$Node;

    if-nez v5, :cond_14

    .line 618
    invoke-direct {p0, v0, v6, v2, v3}, Ljava/util/concurrent/Exchanger;->slotExchange(Ljava/lang/Object;ZJ)Ljava/lang/Object;

    move-result-object v1

    .local v1, "v":Ljava/lang/Object;
    if-nez v1, :cond_28

    .line 619
    .end local v1    # "v":Ljava/lang/Object;
    :cond_14
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5

    if-nez v5, :cond_20

    .line 620
    invoke-direct {p0, v0, v6, v2, v3}, Ljava/util/concurrent/Exchanger;->arenaExchange(Ljava/lang/Object;ZJ)Ljava/lang/Object;

    move-result-object v1

    .restart local v1    # "v":Ljava/lang/Object;
    if-nez v1, :cond_28

    .line 621
    .end local v1    # "v":Ljava/lang/Object;
    :cond_20
    new-instance v4, Ljava/lang/InterruptedException;

    invoke-direct {v4}, Ljava/lang/InterruptedException;-><init>()V

    throw v4

    .line 615
    .end local v0    # "item":Ljava/lang/Object;
    .end local v2    # "ns":J
    :cond_26
    move-object v0, p1

    .restart local v0    # "item":Ljava/lang/Object;
    goto :goto_6

    .line 622
    .restart local v1    # "v":Ljava/lang/Object;
    .restart local v2    # "ns":J
    :cond_28
    sget-object v5, Ljava/util/concurrent/Exchanger;->TIMED_OUT:Ljava/lang/Object;

    if-ne v1, v5, :cond_32

    .line 623
    new-instance v4, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v4}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v4

    .line 624
    :cond_32
    sget-object v5, Ljava/util/concurrent/Exchanger;->NULL_ITEM:Ljava/lang/Object;

    if-ne v1, v5, :cond_37

    move-object v1, v4

    .end local v1    # "v":Ljava/lang/Object;
    :cond_37
    return-object v1
.end method
