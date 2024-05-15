.class public Ljava/util/concurrent/Exchanger;
.super Ljava/lang/Object;
.source "Exchanger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/Exchanger$Participant;,
        Ljava/util/concurrent/Exchanger$Node;
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
.field private static final greylist-max-o ABASE:I

.field private static final greylist-max-o ASHIFT:I = 0x7

.field private static final greylist-max-o BLOCKER:J

.field private static final greylist-max-o BOUND:J

.field static final greylist-max-o FULL:I

.field private static final greylist-max-o MATCH:J

.field private static final greylist-max-o MMASK:I = 0xff

.field private static final greylist-max-o NCPU:I

.field private static final greylist-max-o NULL_ITEM:Ljava/lang/Object;

.field private static final greylist-max-o SEQ:I = 0x100

.field private static final greylist-max-o SLOT:J

.field private static final greylist-max-o SPINS:I = 0x400

.field private static final greylist-max-o TIMED_OUT:Ljava/lang/Object;

.field private static final greylist-max-o U:Lsun/misc/Unsafe;


# instance fields
.field private volatile greylist-max-o arena:[Ljava/util/concurrent/Exchanger$Node;

.field private volatile greylist-max-o bound:I

.field private final greylist-max-o participant:Ljava/util/concurrent/Exchanger$Participant;

.field private volatile greylist-max-o slot:Ljava/util/concurrent/Exchanger$Node;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 275
    const-class v0, Ljava/util/concurrent/Exchanger;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    sput v1, Ljava/util/concurrent/Exchanger;->NCPU:I

    .line 282
    const/16 v2, 0x1fe

    if-lt v1, v2, :cond_13

    const/16 v1, 0xff

    goto :goto_15

    :cond_13
    ushr-int/lit8 v1, v1, 0x1

    :goto_15
    sput v1, Ljava/util/concurrent/Exchanger;->FULL:I

    .line 296
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Ljava/util/concurrent/Exchanger;->NULL_ITEM:Ljava/lang/Object;

    .line 303
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Ljava/util/concurrent/Exchanger;->TIMED_OUT:Ljava/lang/Object;

    .line 629
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v1

    sput-object v1, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    .line 637
    :try_start_2b
    const-string v2, "bound"

    .line 638
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/Exchanger;->BOUND:J

    .line 639
    const-string v2, "slot"

    .line 640
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/Exchanger;->SLOT:J

    .line 642
    const-class v0, Ljava/util/concurrent/Exchanger$Node;

    const-string v2, "match"

    .line 643
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/Exchanger;->MATCH:J

    .line 645
    const-class v0, Ljava/lang/Thread;

    const-string v2, "parkBlocker"

    .line 646
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/Exchanger;->BLOCKER:J

    .line 648
    const-class v0, [Ljava/util/concurrent/Exchanger$Node;

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    .line 649
    .local v0, "scale":I
    add-int/lit8 v2, v0, -0x1

    and-int/2addr v2, v0

    if-nez v2, :cond_79

    const/16 v2, 0x80

    if-gt v0, v2, :cond_79

    .line 652
    const-class v3, [Ljava/util/concurrent/Exchanger$Node;

    invoke-virtual {v1, v3}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v1

    add-int/2addr v1, v2

    sput v1, Ljava/util/concurrent/Exchanger;->ABASE:I

    .line 655
    .end local v0    # "scale":I
    nop

    .line 656
    return-void

    .line 650
    .restart local v0    # "scale":I
    :cond_79
    new-instance v1, Ljava/lang/Error;

    const-string v2, "Unsupported array scale"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_81
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_2b .. :try_end_81} :catch_81

    .line 653
    .end local v0    # "scale":I
    :catch_81
    move-exception v0

    .line 654
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 521
    .local p0, "this":Ljava/util/concurrent/Exchanger;, "Ljava/util/concurrent/Exchanger<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 522
    new-instance v0, Ljava/util/concurrent/Exchanger$Participant;

    invoke-direct {v0}, Ljava/util/concurrent/Exchanger$Participant;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/Exchanger;->participant:Ljava/util/concurrent/Exchanger$Participant;

    .line 523
    return-void
.end method

.method private final greylist-max-o arenaExchange(Ljava/lang/Object;ZJ)Ljava/lang/Object;
    .registers 37
    .param p1, "item"    # Ljava/lang/Object;
    .param p2, "timed"    # Z
    .param p3, "ns"    # J

    .line 360
    .local p0, "this":Ljava/util/concurrent/Exchanger;, "Ljava/util/concurrent/Exchanger<TV;>;"
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-object v8, v6, Ljava/util/concurrent/Exchanger;->arena:[Ljava/util/concurrent/Exchanger$Node;

    .line 361
    .local v8, "a":[Ljava/util/concurrent/Exchanger$Node;
    iget-object v0, v6, Ljava/util/concurrent/Exchanger;->participant:Ljava/util/concurrent/Exchanger$Participant;

    invoke-virtual {v0}, Ljava/util/concurrent/Exchanger$Participant;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/util/concurrent/Exchanger$Node;

    .line 362
    .local v9, "p":Ljava/util/concurrent/Exchanger$Node;
    iget v0, v9, Ljava/util/concurrent/Exchanger$Node;->index:I

    move-wide/from16 v10, p3

    move v12, v0

    .line 364
    .end local p3    # "ns":J
    .local v10, "ns":J
    .local v12, "i":I
    :goto_14
    sget-object v13, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    shl-int/lit8 v0, v12, 0x7

    sget v1, Ljava/util/concurrent/Exchanger;->ABASE:I

    add-int/2addr v0, v1

    int-to-long v0, v0

    move-wide v14, v0

    .local v14, "j":J
    invoke-virtual {v13, v8, v0, v1}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/util/concurrent/Exchanger$Node;

    .line 365
    .local v5, "q":Ljava/util/concurrent/Exchanger$Node;
    if-eqz v5, :cond_43

    const/16 v16, 0x0

    move-object v0, v13

    move-object v1, v8

    move-wide v2, v14

    move-object v4, v5

    move-wide/from16 p3, v10

    move-object v10, v5

    .end local v5    # "q":Ljava/util/concurrent/Exchanger$Node;
    .local v10, "q":Ljava/util/concurrent/Exchanger$Node;
    .restart local p3    # "ns":J
    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 366
    iget-object v0, v10, Ljava/util/concurrent/Exchanger$Node;->item:Ljava/lang/Object;

    .line 367
    .local v0, "v":Ljava/lang/Object;
    iput-object v7, v10, Ljava/util/concurrent/Exchanger$Node;->match:Ljava/lang/Object;

    .line 368
    iget-object v1, v10, Ljava/util/concurrent/Exchanger$Node;->parked:Ljava/lang/Thread;

    .line 369
    .local v1, "w":Ljava/lang/Thread;
    if-eqz v1, :cond_42

    .line 370
    invoke-virtual {v13, v1}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    .line 371
    :cond_42
    return-object v0

    .line 365
    .end local v0    # "v":Ljava/lang/Object;
    .end local v1    # "w":Ljava/lang/Thread;
    .end local p3    # "ns":J
    .restart local v5    # "q":Ljava/util/concurrent/Exchanger$Node;
    .local v10, "ns":J
    :cond_43
    move-wide/from16 p3, v10

    move-object v10, v5

    .line 373
    .end local v5    # "q":Ljava/util/concurrent/Exchanger$Node;
    .local v10, "q":Ljava/util/concurrent/Exchanger$Node;
    .restart local p3    # "ns":J
    :cond_46
    iget v0, v6, Ljava/util/concurrent/Exchanger;->bound:I

    move v11, v0

    .local v11, "b":I
    and-int/lit16 v0, v0, 0xff

    move v5, v0

    .local v5, "m":I
    const/4 v4, 0x0

    if-gt v12, v0, :cond_1c6

    if-nez v10, :cond_1c6

    .line 374
    iput-object v7, v9, Ljava/util/concurrent/Exchanger$Node;->item:Ljava/lang/Object;

    .line 375
    const/16 v16, 0x0

    move-object v0, v13

    move-object v1, v8

    move-wide v2, v14

    move v13, v4

    move-object/from16 v4, v16

    move v13, v5

    .end local v5    # "m":I
    .local v13, "m":I
    move-object v5, v9

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_1bb

    .line 376
    const-wide/16 v17, 0x0

    if-eqz p2, :cond_73

    if-nez v13, :cond_73

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    move-wide/from16 v19, p3

    .end local p3    # "ns":J
    .local v19, "ns":J
    add-long v0, v0, v19

    goto :goto_77

    .end local v19    # "ns":J
    .restart local p3    # "ns":J
    :cond_73
    move-wide/from16 v19, p3

    .end local p3    # "ns":J
    .restart local v19    # "ns":J
    move-wide/from16 v0, v17

    :goto_77
    move-wide/from16 v21, v0

    .line 377
    .local v21, "end":J
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    .line 378
    .local v4, "t":Ljava/lang/Thread;
    iget v0, v9, Ljava/util/concurrent/Exchanger$Node;->hash:I

    .local v0, "h":I
    const/16 v1, 0x400

    move v2, v0

    move-wide/from16 v30, v19

    move/from16 v19, v1

    move-wide/from16 v0, v30

    .line 379
    .local v0, "ns":J
    .local v2, "h":I
    .local v19, "spins":I
    :goto_88
    iget-object v3, v9, Ljava/util/concurrent/Exchanger$Node;->match:Ljava/lang/Object;

    .line 380
    .local v3, "v":Ljava/lang/Object;
    if-eqz v3, :cond_9e

    .line 381
    move-wide/from16 p3, v0

    .end local v0    # "ns":J
    .restart local p3    # "ns":J
    sget-object v0, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    move-object/from16 v23, v10

    move/from16 v24, v11

    .end local v10    # "q":Ljava/util/concurrent/Exchanger$Node;
    .end local v11    # "b":I
    .local v23, "q":Ljava/util/concurrent/Exchanger$Node;
    .local v24, "b":I
    sget-wide v10, Ljava/util/concurrent/Exchanger;->MATCH:J

    invoke-virtual {v0, v9, v10, v11, v5}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 382
    iput-object v5, v9, Ljava/util/concurrent/Exchanger$Node;->item:Ljava/lang/Object;

    .line 383
    iput v2, v9, Ljava/util/concurrent/Exchanger$Node;->hash:I

    .line 384
    return-object v3

    .line 386
    .end local v23    # "q":Ljava/util/concurrent/Exchanger$Node;
    .end local v24    # "b":I
    .end local p3    # "ns":J
    .restart local v0    # "ns":J
    .restart local v10    # "q":Ljava/util/concurrent/Exchanger$Node;
    .restart local v11    # "b":I
    :cond_9e
    move-wide/from16 p3, v0

    move-object/from16 v23, v10

    move/from16 v24, v11

    .end local v0    # "ns":J
    .end local v10    # "q":Ljava/util/concurrent/Exchanger$Node;
    .end local v11    # "b":I
    .restart local v23    # "q":Ljava/util/concurrent/Exchanger$Node;
    .restart local v24    # "b":I
    .restart local p3    # "ns":J
    if-lez v19, :cond_e9

    .line 387
    shl-int/lit8 v0, v2, 0x1

    xor-int/2addr v0, v2

    .end local v2    # "h":I
    .local v0, "h":I
    ushr-int/lit8 v1, v0, 0x3

    xor-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0xa

    xor-int/2addr v0, v1

    .line 388
    if-nez v0, :cond_c4

    .line 389
    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    long-to-int v1, v1

    or-int/lit16 v0, v1, 0x400

    move v2, v0

    move-object/from16 v29, v4

    move-object v6, v5

    move/from16 v10, v24

    const/16 v16, 0x0

    move-wide/from16 v0, p3

    goto/16 :goto_1b1

    .line 390
    :cond_c4
    if-gez v0, :cond_dd

    add-int/lit8 v1, v19, -0x1

    .end local v19    # "spins":I
    .local v1, "spins":I
    and-int/lit16 v2, v1, 0x1ff

    if-nez v2, :cond_cf

    .line 392
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 419
    .end local v3    # "v":Ljava/lang/Object;
    :cond_cf
    move v2, v0

    move/from16 v19, v1

    move-object/from16 v29, v4

    move-object v6, v5

    move/from16 v10, v24

    const/16 v16, 0x0

    move-wide/from16 v0, p3

    goto/16 :goto_1b1

    .line 390
    .end local v1    # "spins":I
    .restart local v3    # "v":Ljava/lang/Object;
    .restart local v19    # "spins":I
    :cond_dd
    move v2, v0

    move-object/from16 v29, v4

    move-object v6, v5

    move/from16 v10, v24

    const/16 v16, 0x0

    move-wide/from16 v0, p3

    goto/16 :goto_1b1

    .line 394
    .end local v0    # "h":I
    .restart local v2    # "h":I
    :cond_e9
    sget-object v10, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    invoke-virtual {v10, v8, v14, v15}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, v9, :cond_100

    .line 395
    const/16 v0, 0x400

    move/from16 v19, v0

    move-object/from16 v29, v4

    move-object v6, v5

    move/from16 v10, v24

    const/16 v16, 0x0

    move-wide/from16 v0, p3

    .end local v19    # "spins":I
    .local v0, "spins":I
    goto/16 :goto_1b1

    .line 396
    .end local v0    # "spins":I
    .restart local v19    # "spins":I
    :cond_100
    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_146

    if-nez v13, :cond_146

    if-eqz p2, :cond_11d

    .line 398
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long v0, v21, v0

    move-wide/from16 v25, v0

    .end local p3    # "ns":J
    .local v25, "ns":J
    cmp-long v0, v0, v17

    if-lez v0, :cond_119

    move-wide/from16 v0, v25

    goto :goto_11f

    :cond_119
    move/from16 v20, v2

    move-object v11, v3

    goto :goto_14b

    .line 396
    .end local v25    # "ns":J
    .restart local p3    # "ns":J
    :cond_11d
    move-wide/from16 v0, p3

    .line 399
    .end local p3    # "ns":J
    .local v0, "ns":J
    :goto_11f
    move/from16 v20, v2

    move-object v11, v3

    .end local v2    # "h":I
    .end local v3    # "v":Ljava/lang/Object;
    .local v11, "v":Ljava/lang/Object;
    .local v20, "h":I
    sget-wide v2, Ljava/util/concurrent/Exchanger;->BLOCKER:J

    invoke-virtual {v10, v4, v2, v3, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 400
    iput-object v4, v9, Ljava/util/concurrent/Exchanger$Node;->parked:Ljava/lang/Thread;

    .line 401
    invoke-virtual {v10, v8, v14, v15}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v9, :cond_134

    .line 402
    const/4 v5, 0x0

    invoke-virtual {v10, v5, v0, v1}, Lsun/misc/Unsafe;->park(ZJ)V

    goto :goto_135

    .line 401
    :cond_134
    const/4 v5, 0x0

    .line 403
    :goto_135
    const/4 v5, 0x0

    iput-object v5, v9, Ljava/util/concurrent/Exchanger$Node;->parked:Ljava/lang/Thread;

    .line 404
    invoke-virtual {v10, v4, v2, v3, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object/from16 v29, v4

    move-object v6, v5

    move/from16 v2, v20

    move/from16 v10, v24

    const/16 v16, 0x0

    goto/16 :goto_1b1

    .line 396
    .end local v0    # "ns":J
    .end local v11    # "v":Ljava/lang/Object;
    .end local v20    # "h":I
    .restart local v2    # "h":I
    .restart local v3    # "v":Ljava/lang/Object;
    .restart local p3    # "ns":J
    :cond_146
    move/from16 v20, v2

    move-object v11, v3

    .line 406
    .end local v2    # "h":I
    .end local v3    # "v":Ljava/lang/Object;
    .restart local v11    # "v":Ljava/lang/Object;
    .restart local v20    # "h":I
    move-wide/from16 v25, p3

    .end local p3    # "ns":J
    .restart local v25    # "ns":J
    :goto_14b
    invoke-virtual {v10, v8, v14, v15}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_1a5

    const/16 v27, 0x0

    .line 407
    move-object v0, v10

    move-object v1, v8

    move/from16 v28, v20

    .end local v20    # "h":I
    .local v28, "h":I
    move-wide v2, v14

    move-object/from16 v29, v4

    .end local v4    # "t":Ljava/lang/Thread;
    .local v29, "t":Ljava/lang/Thread;
    move-object v4, v9

    move-object v6, v5

    const/16 v16, 0x0

    move-object/from16 v5, v27

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a0

    .line 408
    if-eqz v13, :cond_17b

    .line 409
    sget-wide v2, Ljava/util/concurrent/Exchanger;->BOUND:J

    move/from16 v5, v24

    .end local v24    # "b":I
    .local v5, "b":I
    add-int/lit16 v0, v5, 0x100

    add-int/lit8 v16, v0, -0x1

    move-object v0, v10

    move-object/from16 v1, p0

    move v4, v5

    move v10, v5

    .end local v5    # "b":I
    .local v10, "b":I
    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    goto :goto_17d

    .line 408
    .end local v10    # "b":I
    .restart local v24    # "b":I
    :cond_17b
    move/from16 v10, v24

    .line 410
    .end local v24    # "b":I
    .restart local v10    # "b":I
    :goto_17d
    iput-object v6, v9, Ljava/util/concurrent/Exchanger$Node;->item:Ljava/lang/Object;

    .line 411
    move/from16 v0, v28

    .end local v28    # "h":I
    .local v0, "h":I
    iput v0, v9, Ljava/util/concurrent/Exchanger$Node;->hash:I

    .line 412
    iget v1, v9, Ljava/util/concurrent/Exchanger$Node;->index:I

    ushr-int/lit8 v1, v1, 0x1

    iput v1, v9, Ljava/util/concurrent/Exchanger$Node;->index:I

    .line 413
    .end local v12    # "i":I
    .local v1, "i":I
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_190

    .line 414
    return-object v6

    .line 415
    :cond_190
    if-eqz p2, :cond_19b

    if-nez v13, :cond_19b

    cmp-long v2, v25, v17

    if-gtz v2, :cond_19b

    .line 416
    sget-object v2, Ljava/util/concurrent/Exchanger;->TIMED_OUT:Ljava/lang/Object;

    return-object v2

    .line 420
    .end local v0    # "h":I
    .end local v11    # "v":Ljava/lang/Object;
    .end local v19    # "spins":I
    .end local v21    # "end":J
    .end local v29    # "t":Ljava/lang/Thread;
    :cond_19b
    move v12, v1

    move-wide/from16 v10, v25

    goto/16 :goto_20d

    .line 407
    .end local v1    # "i":I
    .end local v10    # "b":I
    .restart local v11    # "v":Ljava/lang/Object;
    .restart local v12    # "i":I
    .restart local v19    # "spins":I
    .restart local v21    # "end":J
    .restart local v24    # "b":I
    .restart local v28    # "h":I
    .restart local v29    # "t":Ljava/lang/Thread;
    :cond_1a0
    move/from16 v10, v24

    move/from16 v0, v28

    .end local v24    # "b":I
    .end local v28    # "h":I
    .restart local v0    # "h":I
    .restart local v10    # "b":I
    goto :goto_1ae

    .line 406
    .end local v0    # "h":I
    .end local v10    # "b":I
    .end local v29    # "t":Ljava/lang/Thread;
    .restart local v4    # "t":Ljava/lang/Thread;
    .restart local v20    # "h":I
    .restart local v24    # "b":I
    :cond_1a5
    move-object/from16 v29, v4

    move-object v6, v5

    move/from16 v0, v20

    move/from16 v10, v24

    const/16 v16, 0x0

    .line 419
    .end local v4    # "t":Ljava/lang/Thread;
    .end local v11    # "v":Ljava/lang/Object;
    .end local v20    # "h":I
    .end local v24    # "b":I
    .restart local v0    # "h":I
    .restart local v10    # "b":I
    .restart local v29    # "t":Ljava/lang/Thread;
    :goto_1ae
    move v2, v0

    move-wide/from16 v0, v25

    .end local v25    # "ns":J
    .local v0, "ns":J
    .restart local v2    # "h":I
    :goto_1b1
    move-object v5, v6

    move v11, v10

    move-object/from16 v10, v23

    move-object/from16 v4, v29

    move-object/from16 v6, p0

    goto/16 :goto_88

    .line 422
    .end local v0    # "ns":J
    .end local v2    # "h":I
    .end local v19    # "spins":I
    .end local v21    # "end":J
    .end local v23    # "q":Ljava/util/concurrent/Exchanger$Node;
    .end local v29    # "t":Ljava/lang/Thread;
    .local v10, "q":Ljava/util/concurrent/Exchanger$Node;
    .local v11, "b":I
    .restart local p3    # "ns":J
    :cond_1bb
    move-wide/from16 v19, p3

    move-object v6, v5

    move-object/from16 v23, v10

    move v10, v11

    .end local v11    # "b":I
    .end local p3    # "ns":J
    .local v10, "b":I
    .local v19, "ns":J
    .restart local v23    # "q":Ljava/util/concurrent/Exchanger$Node;
    iput-object v6, v9, Ljava/util/concurrent/Exchanger$Node;->item:Ljava/lang/Object;

    move-wide/from16 v10, v19

    goto :goto_20d

    .line 373
    .end local v13    # "m":I
    .end local v19    # "ns":J
    .end local v23    # "q":Ljava/util/concurrent/Exchanger$Node;
    .local v5, "m":I
    .local v10, "q":Ljava/util/concurrent/Exchanger$Node;
    .restart local v11    # "b":I
    .restart local p3    # "ns":J
    :cond_1c6
    move-wide/from16 v19, p3

    move v1, v4

    move-object/from16 v23, v10

    move v10, v11

    move-object v0, v13

    move v13, v5

    .line 425
    .end local v5    # "m":I
    .end local v11    # "b":I
    .end local p3    # "ns":J
    .local v10, "b":I
    .restart local v13    # "m":I
    .restart local v19    # "ns":J
    .restart local v23    # "q":Ljava/util/concurrent/Exchanger$Node;
    iget v2, v9, Ljava/util/concurrent/Exchanger$Node;->bound:I

    if-eq v2, v10, :cond_1e1

    .line 426
    iput v10, v9, Ljava/util/concurrent/Exchanger$Node;->bound:I

    .line 427
    iput v1, v9, Ljava/util/concurrent/Exchanger$Node;->collides:I

    .line 428
    if-ne v12, v13, :cond_1de

    if-nez v13, :cond_1db

    goto :goto_1de

    :cond_1db
    add-int/lit8 v5, v13, -0x1

    goto :goto_1df

    :cond_1de
    :goto_1de
    move v5, v13

    :goto_1df
    move v0, v5

    .end local v12    # "i":I
    .local v0, "i":I
    goto :goto_208

    .line 430
    .end local v0    # "i":I
    .restart local v12    # "i":I
    :cond_1e1
    iget v1, v9, Ljava/util/concurrent/Exchanger$Node;->collides:I

    move v6, v1

    .local v6, "c":I
    if-lt v1, v13, :cond_1fd

    sget v1, Ljava/util/concurrent/Exchanger;->FULL:I

    if-eq v13, v1, :cond_1fd

    sget-wide v2, Ljava/util/concurrent/Exchanger;->BOUND:J

    add-int/lit16 v11, v10, 0x100

    add-int/lit8 v5, v11, 0x1

    .line 431
    move-object/from16 v1, p0

    move v4, v10

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-nez v0, :cond_1fa

    goto :goto_1fd

    .line 436
    :cond_1fa
    add-int/lit8 v0, v13, 0x1

    .end local v12    # "i":I
    .restart local v0    # "i":I
    goto :goto_208

    .line 432
    .end local v0    # "i":I
    .restart local v12    # "i":I
    :cond_1fd
    :goto_1fd
    add-int/lit8 v0, v6, 0x1

    iput v0, v9, Ljava/util/concurrent/Exchanger$Node;->collides:I

    .line 433
    if-nez v12, :cond_205

    move v5, v13

    goto :goto_207

    :cond_205
    add-int/lit8 v5, v12, -0x1

    :goto_207
    move v0, v5

    .line 437
    .end local v6    # "c":I
    .end local v12    # "i":I
    .restart local v0    # "i":I
    :goto_208
    iput v0, v9, Ljava/util/concurrent/Exchanger$Node;->index:I

    move v12, v0

    move-wide/from16 v10, v19

    .line 439
    .end local v0    # "i":I
    .end local v13    # "m":I
    .end local v14    # "j":J
    .end local v19    # "ns":J
    .end local v23    # "q":Ljava/util/concurrent/Exchanger$Node;
    .local v10, "ns":J
    .restart local v12    # "i":I
    :goto_20d
    move-object/from16 v6, p0

    goto/16 :goto_14
.end method

.method private final greylist-max-o slotExchange(Ljava/lang/Object;ZJ)Ljava/lang/Object;
    .registers 26
    .param p1, "item"    # Ljava/lang/Object;
    .param p2, "timed"    # Z
    .param p3, "ns"    # J

    .line 453
    .local p0, "this":Ljava/util/concurrent/Exchanger;, "Ljava/util/concurrent/Exchanger<TV;>;"
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-object v0, v6, Ljava/util/concurrent/Exchanger;->participant:Ljava/util/concurrent/Exchanger$Participant;

    invoke-virtual {v0}, Ljava/util/concurrent/Exchanger$Participant;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/util/concurrent/Exchanger$Node;

    .line 454
    .local v8, "p":Ljava/util/concurrent/Exchanger$Node;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    .line 455
    .local v9, "t":Ljava/lang/Thread;
    invoke-virtual {v9}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    const/4 v10, 0x0

    if-eqz v0, :cond_19

    .line 456
    return-object v10

    .line 459
    :cond_19
    :goto_19
    iget-object v0, v6, Ljava/util/concurrent/Exchanger;->slot:Ljava/util/concurrent/Exchanger$Node;

    move-object v11, v0

    .local v11, "q":Ljava/util/concurrent/Exchanger$Node;
    const/4 v12, 0x1

    if-eqz v0, :cond_5b

    .line 460
    sget-object v13, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/Exchanger;->SLOT:J

    const/4 v5, 0x0

    move-object v0, v13

    move-object/from16 v1, p0

    move-object v4, v11

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 461
    iget-object v0, v11, Ljava/util/concurrent/Exchanger$Node;->item:Ljava/lang/Object;

    .line 462
    .local v0, "v":Ljava/lang/Object;
    iput-object v7, v11, Ljava/util/concurrent/Exchanger$Node;->match:Ljava/lang/Object;

    .line 463
    iget-object v1, v11, Ljava/util/concurrent/Exchanger$Node;->parked:Ljava/lang/Thread;

    .line 464
    .local v1, "w":Ljava/lang/Thread;
    if-eqz v1, :cond_39

    .line 465
    invoke-virtual {v13, v1}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    .line 466
    :cond_39
    return-object v0

    .line 469
    .end local v0    # "v":Ljava/lang/Object;
    .end local v1    # "w":Ljava/lang/Thread;
    :cond_3a
    sget v0, Ljava/util/concurrent/Exchanger;->NCPU:I

    if-le v0, v12, :cond_19

    iget v0, v6, Ljava/util/concurrent/Exchanger;->bound:I

    if-nez v0, :cond_19

    sget-wide v2, Ljava/util/concurrent/Exchanger;->BOUND:J

    const/4 v4, 0x0

    const/16 v5, 0x100

    .line 470
    move-object v0, v13

    move-object/from16 v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 471
    sget v0, Ljava/util/concurrent/Exchanger;->FULL:I

    add-int/lit8 v0, v0, 0x2

    shl-int/lit8 v0, v0, 0x7

    new-array v0, v0, [Ljava/util/concurrent/Exchanger$Node;

    iput-object v0, v6, Ljava/util/concurrent/Exchanger;->arena:[Ljava/util/concurrent/Exchanger$Node;

    goto :goto_19

    .line 473
    :cond_5b
    iget-object v0, v6, Ljava/util/concurrent/Exchanger;->arena:[Ljava/util/concurrent/Exchanger$Node;

    if-eqz v0, :cond_60

    .line 474
    return-object v10

    .line 476
    :cond_60
    iput-object v7, v8, Ljava/util/concurrent/Exchanger$Node;->item:Ljava/lang/Object;

    .line 477
    sget-object v0, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/Exchanger;->SLOT:J

    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_125

    .line 478
    nop

    .line 484
    .end local v11    # "q":Ljava/util/concurrent/Exchanger$Node;
    iget v0, v8, Ljava/util/concurrent/Exchanger$Node;->hash:I

    .line 485
    .local v0, "h":I
    const-wide/16 v13, 0x0

    if-eqz p2, :cond_7e

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    add-long v1, v1, p3

    goto :goto_7f

    :cond_7e
    move-wide v1, v13

    :goto_7f
    move-wide v15, v1

    .line 486
    .local v15, "end":J
    sget v1, Ljava/util/concurrent/Exchanger;->NCPU:I

    const/16 v11, 0x400

    if-le v1, v12, :cond_87

    move v12, v11

    :cond_87
    move v1, v12

    move v12, v0

    move/from16 v17, v1

    move-wide/from16 v0, p3

    .line 488
    .end local p3    # "ns":J
    .local v0, "ns":J
    .local v12, "h":I
    .local v17, "spins":I
    :cond_8d
    :goto_8d
    iget-object v2, v8, Ljava/util/concurrent/Exchanger$Node;->match:Ljava/lang/Object;

    move-object/from16 v18, v2

    .local v18, "v":Ljava/lang/Object;
    if-nez v2, :cond_119

    .line 489
    if-lez v17, :cond_b7

    .line 490
    shl-int/lit8 v2, v12, 0x1

    xor-int/2addr v2, v12

    .end local v12    # "h":I
    .local v2, "h":I
    ushr-int/lit8 v3, v2, 0x3

    xor-int/2addr v2, v3

    shl-int/lit8 v3, v2, 0xa

    xor-int v12, v2, v3

    .line 491
    .end local v2    # "h":I
    .restart local v12    # "h":I
    if-nez v12, :cond_a9

    .line 492
    invoke-virtual {v9}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    long-to-int v2, v2

    or-int/lit16 v12, v2, 0x400

    goto :goto_8d

    .line 493
    :cond_a9
    if-gez v12, :cond_8d

    add-int/lit8 v2, v17, -0x1

    .end local v17    # "spins":I
    .local v2, "spins":I
    and-int/lit16 v3, v2, 0x1ff

    if-nez v3, :cond_b4

    .line 494
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 488
    .end local v18    # "v":Ljava/lang/Object;
    :cond_b4
    move/from16 v17, v2

    goto :goto_8d

    .line 496
    .end local v2    # "spins":I
    .restart local v17    # "spins":I
    .restart local v18    # "v":Ljava/lang/Object;
    :cond_b7
    iget-object v2, v6, Ljava/util/concurrent/Exchanger;->slot:Ljava/util/concurrent/Exchanger$Node;

    if-eq v2, v8, :cond_be

    .line 497
    const/16 v17, 0x400

    goto :goto_8d

    .line 498
    :cond_be
    invoke-virtual {v9}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_f0

    iget-object v2, v6, Ljava/util/concurrent/Exchanger;->arena:[Ljava/util/concurrent/Exchanger$Node;

    if-nez v2, :cond_f0

    if-eqz p2, :cond_d9

    .line 499
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long v2, v15, v2

    move-wide v0, v2

    cmp-long v2, v2, v13

    if-lez v2, :cond_d6

    goto :goto_d9

    :cond_d6
    move-wide/from16 v19, v0

    goto :goto_f2

    .line 500
    :cond_d9
    :goto_d9
    sget-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    sget-wide v3, Ljava/util/concurrent/Exchanger;->BLOCKER:J

    invoke-virtual {v2, v9, v3, v4, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 501
    iput-object v9, v8, Ljava/util/concurrent/Exchanger$Node;->parked:Ljava/lang/Thread;

    .line 502
    iget-object v5, v6, Ljava/util/concurrent/Exchanger;->slot:Ljava/util/concurrent/Exchanger$Node;

    if-ne v5, v8, :cond_ea

    .line 503
    const/4 v5, 0x0

    invoke-virtual {v2, v5, v0, v1}, Lsun/misc/Unsafe;->park(ZJ)V

    .line 504
    :cond_ea
    iput-object v10, v8, Ljava/util/concurrent/Exchanger$Node;->parked:Ljava/lang/Thread;

    .line 505
    invoke-virtual {v2, v9, v3, v4, v10}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_8d

    .line 507
    :cond_f0
    move-wide/from16 v19, v0

    .end local v0    # "ns":J
    .local v19, "ns":J
    :goto_f2
    sget-object v0, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/Exchanger;->SLOT:J

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object v4, v8

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_115

    .line 508
    if-eqz p2, :cond_10f

    cmp-long v0, v19, v13

    if-gtz v0, :cond_10f

    invoke-virtual {v9}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_10f

    sget-object v0, Ljava/util/concurrent/Exchanger;->TIMED_OUT:Ljava/lang/Object;

    goto :goto_110

    :cond_10f
    move-object v0, v10

    :goto_110
    move-object/from16 v18, v0

    .line 509
    move-wide/from16 v0, v19

    goto :goto_119

    .line 507
    :cond_115
    move-wide/from16 v0, v19

    goto/16 :goto_8d

    .line 512
    .end local v19    # "ns":J
    .restart local v0    # "ns":J
    :cond_119
    :goto_119
    sget-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    sget-wide v3, Ljava/util/concurrent/Exchanger;->MATCH:J

    invoke-virtual {v2, v8, v3, v4, v10}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 513
    iput-object v10, v8, Ljava/util/concurrent/Exchanger$Node;->item:Ljava/lang/Object;

    .line 514
    iput v12, v8, Ljava/util/concurrent/Exchanger$Node;->hash:I

    .line 515
    return-object v18

    .line 479
    .end local v0    # "ns":J
    .end local v12    # "h":I
    .end local v15    # "end":J
    .end local v17    # "spins":I
    .end local v18    # "v":Ljava/lang/Object;
    .restart local v11    # "q":Ljava/util/concurrent/Exchanger$Node;
    .restart local p3    # "ns":J
    :cond_125
    iput-object v10, v8, Ljava/util/concurrent/Exchanger$Node;->item:Ljava/lang/Object;

    goto/16 :goto_19
.end method


# virtual methods
.method public whitelist test-api exchange(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
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

    .line 561
    .local p0, "this":Ljava/util/concurrent/Exchanger;, "Ljava/util/concurrent/Exchanger<TV;>;"
    .local p1, "x":Ljava/lang/Object;, "TV;"
    if-nez p1, :cond_5

    sget-object v0, Ljava/util/concurrent/Exchanger;->NULL_ITEM:Ljava/lang/Object;

    goto :goto_6

    :cond_5
    move-object v0, p1

    .line 562
    .local v0, "item":Ljava/lang/Object;
    :goto_6
    iget-object v1, p0, Ljava/util/concurrent/Exchanger;->arena:[Ljava/util/concurrent/Exchanger$Node;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    if-nez v1, :cond_14

    .line 563
    invoke-direct {p0, v0, v4, v2, v3}, Ljava/util/concurrent/Exchanger;->slotExchange(Ljava/lang/Object;ZJ)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    .local v5, "v":Ljava/lang/Object;
    if-nez v1, :cond_21

    .line 564
    .end local v5    # "v":Ljava/lang/Object;
    :cond_14
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_29

    .line 565
    invoke-direct {p0, v0, v4, v2, v3}, Ljava/util/concurrent/Exchanger;->arenaExchange(Ljava/lang/Object;ZJ)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    .restart local v5    # "v":Ljava/lang/Object;
    if-eqz v1, :cond_29

    .line 567
    :cond_21
    sget-object v1, Ljava/util/concurrent/Exchanger;->NULL_ITEM:Ljava/lang/Object;

    if-ne v5, v1, :cond_27

    const/4 v1, 0x0

    goto :goto_28

    :cond_27
    move-object v1, v5

    :goto_28
    return-object v1

    .line 566
    .end local v5    # "v":Ljava/lang/Object;
    :cond_29
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1
.end method

.method public whitelist test-api exchange(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 11
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

    .line 616
    .local p0, "this":Ljava/util/concurrent/Exchanger;, "Ljava/util/concurrent/Exchanger<TV;>;"
    .local p1, "x":Ljava/lang/Object;, "TV;"
    if-nez p1, :cond_5

    sget-object v0, Ljava/util/concurrent/Exchanger;->NULL_ITEM:Ljava/lang/Object;

    goto :goto_6

    :cond_5
    move-object v0, p1

    .line 617
    .local v0, "item":Ljava/lang/Object;
    :goto_6
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    .line 618
    .local v1, "ns":J
    iget-object v3, p0, Ljava/util/concurrent/Exchanger;->arena:[Ljava/util/concurrent/Exchanger$Node;

    const/4 v4, 0x1

    if-nez v3, :cond_16

    .line 619
    invoke-direct {p0, v0, v4, v1, v2}, Ljava/util/concurrent/Exchanger;->slotExchange(Ljava/lang/Object;ZJ)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    .local v5, "v":Ljava/lang/Object;
    if-nez v3, :cond_23

    .line 620
    .end local v5    # "v":Ljava/lang/Object;
    :cond_16
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-nez v3, :cond_35

    .line 621
    invoke-direct {p0, v0, v4, v1, v2}, Ljava/util/concurrent/Exchanger;->arenaExchange(Ljava/lang/Object;ZJ)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    .restart local v5    # "v":Ljava/lang/Object;
    if-eqz v3, :cond_35

    .line 623
    :cond_23
    sget-object v3, Ljava/util/concurrent/Exchanger;->TIMED_OUT:Ljava/lang/Object;

    if-eq v5, v3, :cond_2f

    .line 625
    sget-object v3, Ljava/util/concurrent/Exchanger;->NULL_ITEM:Ljava/lang/Object;

    if-ne v5, v3, :cond_2d

    const/4 v3, 0x0

    goto :goto_2e

    :cond_2d
    move-object v3, v5

    :goto_2e
    return-object v3

    .line 624
    :cond_2f
    new-instance v3, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v3}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v3

    .line 622
    .end local v5    # "v":Ljava/lang/Object;
    :cond_35
    new-instance v3, Ljava/lang/InterruptedException;

    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    throw v3
.end method
