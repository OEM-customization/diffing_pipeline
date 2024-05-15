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

    move-result-wide v1

    sput-wide v1, Ljava/util/concurrent/Exchanger;->BOUND:J

    .line 639
    sget-object v1, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    const-string v2, "slot"

    .line 640
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/concurrent/Exchanger;->SLOT:J

    .line 642
    sget-object v0, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    const-class v1, Ljava/util/concurrent/Exchanger$Node;

    const-string v2, "match"

    .line 643
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/concurrent/Exchanger;->MATCH:J

    .line 645
    sget-object v0, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    const-class v1, Ljava/lang/Thread;

    const-string v2, "parkBlocker"

    .line 646
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/concurrent/Exchanger;->BLOCKER:J

    .line 648
    sget-object v0, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    const-class v1, [Ljava/util/concurrent/Exchanger$Node;

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    .line 649
    .local v0, "scale":I
    add-int/lit8 v1, v0, -0x1

    and-int/2addr v1, v0

    if-nez v1, :cond_83

    const/16 v1, 0x80

    if-gt v0, v1, :cond_83

    .line 652
    sget-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    const-class v3, [Ljava/util/concurrent/Exchanger$Node;

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v2

    add-int/2addr v2, v1

    sput v2, Ljava/util/concurrent/Exchanger;->ABASE:I

    .line 655
    .end local v0    # "scale":I
    nop

    .line 656
    return-void

    .line 650
    .restart local v0    # "scale":I
    :cond_83
    new-instance v1, Ljava/lang/Error;

    const-string v2, "Unsupported array scale"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_8b
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_2b .. :try_end_8b} :catch_8b

    .line 653
    .end local v0    # "scale":I
    :catch_8b
    move-exception v0

    .line 654
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor whitelist core-platform-api test-api <init>()V
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
    .registers 33
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
    sget-object v0, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    shl-int/lit8 v1, v12, 0x7

    sget v2, Ljava/util/concurrent/Exchanger;->ABASE:I

    add-int/2addr v1, v2

    int-to-long v1, v1

    move-wide v13, v1

    .local v13, "j":J
    invoke-virtual {v0, v8, v1, v2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Ljava/util/concurrent/Exchanger$Node;

    .line 365
    .local v15, "q":Ljava/util/concurrent/Exchanger$Node;
    if-eqz v15, :cond_40

    sget-object v0, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    const/4 v5, 0x0

    move-object v1, v8

    move-wide v2, v13

    move-object v4, v15

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 366
    iget-object v0, v15, Ljava/util/concurrent/Exchanger$Node;->item:Ljava/lang/Object;

    .line 367
    .local v0, "v":Ljava/lang/Object;
    iput-object v7, v15, Ljava/util/concurrent/Exchanger$Node;->match:Ljava/lang/Object;

    .line 368
    iget-object v1, v15, Ljava/util/concurrent/Exchanger$Node;->parked:Ljava/lang/Thread;

    .line 369
    .local v1, "w":Ljava/lang/Thread;
    if-eqz v1, :cond_3f

    .line 370
    sget-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    invoke-virtual {v2, v1}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    .line 371
    :cond_3f
    return-object v0

    .line 373
    .end local v0    # "v":Ljava/lang/Object;
    .end local v1    # "w":Ljava/lang/Thread;
    :cond_40
    iget v0, v6, Ljava/util/concurrent/Exchanger;->bound:I

    move v5, v0

    .local v5, "b":I
    and-int/lit16 v0, v0, 0xff

    move v4, v0

    .local v4, "m":I
    const/4 v2, 0x0

    if-gt v12, v0, :cond_1b0

    if-nez v15, :cond_1b0

    .line 374
    iput-object v7, v9, Ljava/util/concurrent/Exchanger$Node;->item:Ljava/lang/Object;

    .line 375
    sget-object v0, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    const/16 v16, 0x0

    move-object v1, v8

    move v7, v2

    move-wide v2, v13

    move v7, v4

    .end local v4    # "m":I
    .local v7, "m":I
    move-object/from16 v4, v16

    move-object/from16 p4, v15

    move v15, v5

    .end local v5    # "b":I
    .local v15, "b":I
    .local p4, "q":Ljava/util/concurrent/Exchanger$Node;
    move-object v5, v9

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_1a7

    .line 376
    const-wide/16 v16, 0x0

    if-eqz p2, :cond_6e

    if-nez v7, :cond_6e

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    add-long/2addr v0, v10

    goto :goto_70

    :cond_6e
    move-wide/from16 v0, v16

    :goto_70
    move-wide/from16 v18, v0

    .line 377
    .local v18, "end":J
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    .line 378
    .local v4, "t":Ljava/lang/Thread;
    iget v0, v9, Ljava/util/concurrent/Exchanger$Node;->hash:I

    .local v0, "h":I
    const/16 v1, 0x400

    move-wide/from16 v26, v10

    move v10, v0

    move v11, v1

    move-wide/from16 v0, v26

    .line 379
    .local v0, "ns":J
    .local v10, "h":I
    .local v11, "spins":I
    :goto_80
    iget-object v2, v9, Ljava/util/concurrent/Exchanger$Node;->match:Ljava/lang/Object;

    .line 380
    .local v2, "v":Ljava/lang/Object;
    if-eqz v2, :cond_92

    .line 381
    sget-object v3, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    move-wide/from16 v20, v0

    .end local v0    # "ns":J
    .local v20, "ns":J
    sget-wide v0, Ljava/util/concurrent/Exchanger;->MATCH:J

    invoke-virtual {v3, v9, v0, v1, v5}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 382
    iput-object v5, v9, Ljava/util/concurrent/Exchanger$Node;->item:Ljava/lang/Object;

    .line 383
    iput v10, v9, Ljava/util/concurrent/Exchanger$Node;->hash:I

    .line 384
    return-object v2

    .line 386
    .end local v20    # "ns":J
    .restart local v0    # "ns":J
    :cond_92
    move-wide/from16 v20, v0

    .end local v0    # "ns":J
    .restart local v20    # "ns":J
    if-lez v11, :cond_dd

    .line 387
    shl-int/lit8 v0, v10, 0x1

    xor-int/2addr v0, v10

    .end local v10    # "h":I
    .local v0, "h":I
    ushr-int/lit8 v1, v0, 0x3

    xor-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0xa

    xor-int/2addr v0, v1

    .line 388
    if-nez v0, :cond_b6

    .line 389
    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    long-to-int v1, v5

    or-int/lit16 v0, v1, 0x400

    move v10, v0

    move-object/from16 v24, v4

    move-object/from16 v25, v8

    move/from16 v23, v11

    move-wide/from16 v0, v20

    const/4 v8, 0x0

    move-object/from16 v11, p0

    goto/16 :goto_19d

    .line 390
    :cond_b6
    if-gez v0, :cond_cf

    add-int/lit8 v11, v11, -0x1

    and-int/lit16 v1, v11, 0x1ff

    if-nez v1, :cond_c1

    .line 392
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 419
    .end local v2    # "v":Ljava/lang/Object;
    :cond_c1
    move v10, v0

    move-object/from16 v24, v4

    move-object/from16 v25, v8

    move/from16 v23, v11

    move-wide/from16 v0, v20

    const/4 v8, 0x0

    move-object/from16 v11, p0

    goto/16 :goto_19d

    .line 390
    .restart local v2    # "v":Ljava/lang/Object;
    :cond_cf
    move v10, v0

    move-object/from16 v24, v4

    move-object/from16 v25, v8

    move/from16 v23, v11

    move-wide/from16 v0, v20

    const/4 v8, 0x0

    move-object/from16 v11, p0

    goto/16 :goto_19d

    .line 394
    .end local v0    # "h":I
    .restart local v10    # "h":I
    :cond_dd
    sget-object v0, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    invoke-virtual {v0, v8, v13, v14}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, v9, :cond_f4

    .line 395
    const/16 v0, 0x400

    move-object/from16 v11, p0

    move/from16 v23, v0

    move-object/from16 v24, v4

    move-object/from16 v25, v8

    move-wide/from16 v0, v20

    const/4 v8, 0x0

    .end local v11    # "spins":I
    .local v0, "spins":I
    goto/16 :goto_19d

    .line 396
    .end local v0    # "spins":I
    .restart local v11    # "spins":I
    :cond_f4
    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_144

    if-nez v7, :cond_144

    if-eqz p2, :cond_113

    .line 398
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long v0, v18, v0

    move-wide v5, v0

    .end local v20    # "ns":J
    .local v5, "ns":J
    cmp-long v0, v0, v16

    if-lez v0, :cond_10b

    move-wide v0, v5

    goto :goto_115

    :cond_10b
    move-wide/from16 v20, v5

    move/from16 v23, v11

    const/4 v5, 0x0

    move-object/from16 v11, p0

    goto :goto_149

    .line 396
    .end local v5    # "ns":J
    .restart local v20    # "ns":J
    :cond_113
    move-wide/from16 v0, v20

    .line 399
    .end local v20    # "ns":J
    .local v0, "ns":J
    :goto_115
    sget-object v3, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    sget-wide v5, Ljava/util/concurrent/Exchanger;->BLOCKER:J

    move/from16 v23, v11

    move-object/from16 v11, p0

    .end local v11    # "spins":I
    .local v23, "spins":I
    invoke-virtual {v3, v4, v5, v6, v11}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 400
    iput-object v4, v9, Ljava/util/concurrent/Exchanger$Node;->parked:Ljava/lang/Thread;

    .line 401
    sget-object v3, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    invoke-virtual {v3, v8, v13, v14}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v9, :cond_130

    .line 402
    sget-object v3, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v0, v1}, Lsun/misc/Unsafe;->park(ZJ)V

    .line 403
    :cond_130
    const/4 v5, 0x0

    iput-object v5, v9, Ljava/util/concurrent/Exchanger$Node;->parked:Ljava/lang/Thread;

    .line 404
    sget-object v3, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    move-wide/from16 v20, v0

    .end local v0    # "ns":J
    .restart local v20    # "ns":J
    sget-wide v0, Ljava/util/concurrent/Exchanger;->BLOCKER:J

    invoke-virtual {v3, v4, v0, v1, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object/from16 v24, v4

    move-object/from16 v25, v8

    move-wide/from16 v0, v20

    move-object v8, v5

    goto :goto_19d

    .line 396
    .end local v23    # "spins":I
    .restart local v11    # "spins":I
    :cond_144
    const/4 v5, 0x0

    move/from16 v23, v11

    move-object/from16 v11, p0

    .line 406
    .end local v11    # "spins":I
    .restart local v23    # "spins":I
    :goto_149
    sget-object v0, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    invoke-virtual {v0, v8, v13, v14}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_194

    sget-object v0, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    const/4 v6, 0x0

    .line 407
    move-object v1, v8

    move-object/from16 v22, v2

    .end local v2    # "v":Ljava/lang/Object;
    .local v22, "v":Ljava/lang/Object;
    move-wide v2, v13

    move-object/from16 v24, v4

    .end local v4    # "t":Ljava/lang/Thread;
    .local v24, "t":Ljava/lang/Thread;
    move-object v4, v9

    move-object/from16 v25, v8

    move-object v8, v5

    .end local v8    # "a":[Ljava/util/concurrent/Exchanger$Node;
    .local v25, "a":[Ljava/util/concurrent/Exchanger$Node;
    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19b

    .line 408
    if-eqz v7, :cond_175

    .line 409
    sget-object v0, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/Exchanger;->BOUND:J

    add-int/lit16 v5, v15, 0x100

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v1, p0

    move v4, v15

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    .line 410
    :cond_175
    iput-object v8, v9, Ljava/util/concurrent/Exchanger$Node;->item:Ljava/lang/Object;

    .line 411
    iput v10, v9, Ljava/util/concurrent/Exchanger$Node;->hash:I

    .line 412
    iget v0, v9, Ljava/util/concurrent/Exchanger$Node;->index:I

    ushr-int/lit8 v0, v0, 0x1

    iput v0, v9, Ljava/util/concurrent/Exchanger$Node;->index:I

    .line 413
    .end local v12    # "i":I
    .local v0, "i":I
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_186

    .line 414
    return-object v8

    .line 415
    :cond_186
    if-eqz p2, :cond_191

    if-nez v7, :cond_191

    cmp-long v1, v20, v16

    if-gtz v1, :cond_191

    .line 416
    sget-object v1, Ljava/util/concurrent/Exchanger;->TIMED_OUT:Ljava/lang/Object;

    return-object v1

    .line 420
    .end local v10    # "h":I
    .end local v18    # "end":J
    .end local v22    # "v":Ljava/lang/Object;
    .end local v23    # "spins":I
    .end local v24    # "t":Ljava/lang/Thread;
    :cond_191
    move v12, v0

    goto/16 :goto_1f9

    .line 406
    .end local v0    # "i":I
    .end local v25    # "a":[Ljava/util/concurrent/Exchanger$Node;
    .restart local v2    # "v":Ljava/lang/Object;
    .restart local v4    # "t":Ljava/lang/Thread;
    .restart local v8    # "a":[Ljava/util/concurrent/Exchanger$Node;
    .restart local v10    # "h":I
    .restart local v12    # "i":I
    .restart local v18    # "end":J
    .restart local v23    # "spins":I
    :cond_194
    move-object/from16 v22, v2

    move-object/from16 v24, v4

    move-object/from16 v25, v8

    move-object v8, v5

    .line 419
    .end local v2    # "v":Ljava/lang/Object;
    .end local v4    # "t":Ljava/lang/Thread;
    .end local v8    # "a":[Ljava/util/concurrent/Exchanger$Node;
    .restart local v24    # "t":Ljava/lang/Thread;
    .restart local v25    # "a":[Ljava/util/concurrent/Exchanger$Node;
    :cond_19b
    move-wide/from16 v0, v20

    .end local v20    # "ns":J
    .local v0, "ns":J
    :goto_19d
    move-object v5, v8

    move-object v6, v11

    move/from16 v11, v23

    move-object/from16 v4, v24

    move-object/from16 v8, v25

    goto/16 :goto_80

    .line 422
    .end local v0    # "ns":J
    .end local v18    # "end":J
    .end local v23    # "spins":I
    .end local v24    # "t":Ljava/lang/Thread;
    .end local v25    # "a":[Ljava/util/concurrent/Exchanger$Node;
    .restart local v8    # "a":[Ljava/util/concurrent/Exchanger$Node;
    .local v10, "ns":J
    :cond_1a7
    move-object/from16 v25, v8

    move-wide/from16 v20, v10

    move-object v8, v5

    move-object v11, v6

    .end local v8    # "a":[Ljava/util/concurrent/Exchanger$Node;
    .end local v10    # "ns":J
    .restart local v20    # "ns":J
    .restart local v25    # "a":[Ljava/util/concurrent/Exchanger$Node;
    iput-object v8, v9, Ljava/util/concurrent/Exchanger$Node;->item:Ljava/lang/Object;

    goto :goto_1f9

    .line 373
    .end local v7    # "m":I
    .end local v20    # "ns":J
    .end local v25    # "a":[Ljava/util/concurrent/Exchanger$Node;
    .end local p4    # "q":Ljava/util/concurrent/Exchanger$Node;
    .local v4, "m":I
    .local v5, "b":I
    .restart local v8    # "a":[Ljava/util/concurrent/Exchanger$Node;
    .restart local v10    # "ns":J
    .local v15, "q":Ljava/util/concurrent/Exchanger$Node;
    :cond_1b0
    move v7, v4

    move-object/from16 v25, v8

    move-wide/from16 v20, v10

    move-object/from16 p4, v15

    move v15, v5

    move-object v11, v6

    .line 425
    .end local v4    # "m":I
    .end local v5    # "b":I
    .end local v8    # "a":[Ljava/util/concurrent/Exchanger$Node;
    .end local v10    # "ns":J
    .restart local v7    # "m":I
    .local v15, "b":I
    .restart local v20    # "ns":J
    .restart local v25    # "a":[Ljava/util/concurrent/Exchanger$Node;
    .restart local p4    # "q":Ljava/util/concurrent/Exchanger$Node;
    iget v0, v9, Ljava/util/concurrent/Exchanger$Node;->bound:I

    if-eq v0, v15, :cond_1cd

    .line 426
    iput v15, v9, Ljava/util/concurrent/Exchanger$Node;->bound:I

    .line 427
    const/4 v0, 0x0

    iput v0, v9, Ljava/util/concurrent/Exchanger$Node;->collides:I

    .line 428
    if-ne v12, v7, :cond_1ca

    if-nez v7, :cond_1c7

    goto :goto_1ca

    :cond_1c7
    add-int/lit8 v4, v7, -0x1

    goto :goto_1cb

    :cond_1ca
    :goto_1ca
    move v4, v7

    :goto_1cb
    move v0, v4

    .end local v12    # "i":I
    .local v0, "i":I
    goto :goto_1f6

    .line 430
    .end local v0    # "i":I
    .restart local v12    # "i":I
    :cond_1cd
    iget v0, v9, Ljava/util/concurrent/Exchanger$Node;->collides:I

    move v6, v0

    .local v6, "c":I
    if-lt v0, v7, :cond_1eb

    sget v0, Ljava/util/concurrent/Exchanger;->FULL:I

    if-eq v7, v0, :cond_1eb

    sget-object v0, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/Exchanger;->BOUND:J

    add-int/lit16 v5, v15, 0x100

    add-int/lit8 v5, v5, 0x1

    .line 431
    move-object/from16 v1, p0

    move v4, v15

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-nez v0, :cond_1e8

    goto :goto_1eb

    .line 436
    :cond_1e8
    add-int/lit8 v0, v7, 0x1

    .end local v12    # "i":I
    .restart local v0    # "i":I
    goto :goto_1f6

    .line 432
    .end local v0    # "i":I
    .restart local v12    # "i":I
    :cond_1eb
    :goto_1eb
    add-int/lit8 v0, v6, 0x1

    iput v0, v9, Ljava/util/concurrent/Exchanger$Node;->collides:I

    .line 433
    if-nez v12, :cond_1f3

    move v4, v7

    goto :goto_1f5

    :cond_1f3
    add-int/lit8 v4, v12, -0x1

    :goto_1f5
    move v0, v4

    .line 437
    .end local v6    # "c":I
    .end local v12    # "i":I
    .restart local v0    # "i":I
    :goto_1f6
    iput v0, v9, Ljava/util/concurrent/Exchanger$Node;->index:I

    move v12, v0

    .line 439
    .end local v0    # "i":I
    .end local v7    # "m":I
    .end local v13    # "j":J
    .end local v15    # "b":I
    .end local p4    # "q":Ljava/util/concurrent/Exchanger$Node;
    .restart local v12    # "i":I
    :goto_1f9
    move-object/from16 v7, p1

    move-object v6, v11

    move-wide/from16 v10, v20

    move-object/from16 v8, v25

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

    if-eqz v0, :cond_5d

    .line 460
    sget-object v0, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/Exchanger;->SLOT:J

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object v4, v11

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 461
    iget-object v0, v11, Ljava/util/concurrent/Exchanger$Node;->item:Ljava/lang/Object;

    .line 462
    .local v0, "v":Ljava/lang/Object;
    iput-object v7, v11, Ljava/util/concurrent/Exchanger$Node;->match:Ljava/lang/Object;

    .line 463
    iget-object v1, v11, Ljava/util/concurrent/Exchanger$Node;->parked:Ljava/lang/Thread;

    .line 464
    .local v1, "w":Ljava/lang/Thread;
    if-eqz v1, :cond_3a

    .line 465
    sget-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    invoke-virtual {v2, v1}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    .line 466
    :cond_3a
    return-object v0

    .line 469
    .end local v0    # "v":Ljava/lang/Object;
    .end local v1    # "w":Ljava/lang/Thread;
    :cond_3b
    sget v0, Ljava/util/concurrent/Exchanger;->NCPU:I

    if-le v0, v12, :cond_19

    iget v0, v6, Ljava/util/concurrent/Exchanger;->bound:I

    if-nez v0, :cond_19

    sget-object v0, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/Exchanger;->BOUND:J

    const/4 v4, 0x0

    const/16 v5, 0x100

    .line 470
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
    :cond_5d
    iget-object v0, v6, Ljava/util/concurrent/Exchanger;->arena:[Ljava/util/concurrent/Exchanger$Node;

    if-eqz v0, :cond_62

    .line 474
    return-object v10

    .line 476
    :cond_62
    iput-object v7, v8, Ljava/util/concurrent/Exchanger$Node;->item:Ljava/lang/Object;

    .line 477
    sget-object v0, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/Exchanger;->SLOT:J

    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12d

    .line 478
    nop

    .line 484
    .end local v11    # "q":Ljava/util/concurrent/Exchanger$Node;
    iget v0, v8, Ljava/util/concurrent/Exchanger$Node;->hash:I

    .line 485
    .local v0, "h":I
    const-wide/16 v13, 0x0

    if-eqz p2, :cond_80

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    add-long v1, v1, p3

    goto :goto_81

    :cond_80
    move-wide v1, v13

    :goto_81
    move-wide v15, v1

    .line 486
    .local v15, "end":J
    sget v1, Ljava/util/concurrent/Exchanger;->NCPU:I

    const/16 v11, 0x400

    if-le v1, v12, :cond_89

    move v12, v11

    :cond_89
    move v1, v12

    move v12, v0

    move/from16 v17, v1

    move-wide/from16 v0, p3

    .line 488
    .end local p3    # "ns":J
    .local v0, "ns":J
    .local v12, "h":I
    .local v17, "spins":I
    :cond_8f
    :goto_8f
    iget-object v2, v8, Ljava/util/concurrent/Exchanger$Node;->match:Ljava/lang/Object;

    move-object/from16 v18, v2

    .local v18, "v":Ljava/lang/Object;
    if-nez v2, :cond_121

    .line 489
    if-lez v17, :cond_b9

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
    if-nez v12, :cond_ab

    .line 492
    invoke-virtual {v9}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    long-to-int v2, v2

    or-int/lit16 v12, v2, 0x400

    goto :goto_8f

    .line 493
    :cond_ab
    if-gez v12, :cond_8f

    add-int/lit8 v2, v17, -0x1

    .end local v17    # "spins":I
    .local v2, "spins":I
    and-int/lit16 v3, v2, 0x1ff

    if-nez v3, :cond_b6

    .line 494
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 488
    .end local v18    # "v":Ljava/lang/Object;
    :cond_b6
    move/from16 v17, v2

    goto :goto_8f

    .line 496
    .end local v2    # "spins":I
    .restart local v17    # "spins":I
    .restart local v18    # "v":Ljava/lang/Object;
    :cond_b9
    iget-object v2, v6, Ljava/util/concurrent/Exchanger;->slot:Ljava/util/concurrent/Exchanger$Node;

    if-eq v2, v8, :cond_c0

    .line 497
    const/16 v17, 0x400

    goto :goto_8f

    .line 498
    :cond_c0
    invoke-virtual {v9}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_f8

    iget-object v2, v6, Ljava/util/concurrent/Exchanger;->arena:[Ljava/util/concurrent/Exchanger$Node;

    if-nez v2, :cond_f8

    if-eqz p2, :cond_db

    .line 499
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long v2, v15, v2

    move-wide v0, v2

    cmp-long v2, v2, v13

    if-lez v2, :cond_d8

    goto :goto_db

    :cond_d8
    move-wide/from16 v19, v0

    goto :goto_fa

    .line 500
    :cond_db
    :goto_db
    sget-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    sget-wide v3, Ljava/util/concurrent/Exchanger;->BLOCKER:J

    invoke-virtual {v2, v9, v3, v4, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 501
    iput-object v9, v8, Ljava/util/concurrent/Exchanger$Node;->parked:Ljava/lang/Thread;

    .line 502
    iget-object v2, v6, Ljava/util/concurrent/Exchanger;->slot:Ljava/util/concurrent/Exchanger$Node;

    if-ne v2, v8, :cond_ee

    .line 503
    sget-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0, v1}, Lsun/misc/Unsafe;->park(ZJ)V

    .line 504
    :cond_ee
    iput-object v10, v8, Ljava/util/concurrent/Exchanger$Node;->parked:Ljava/lang/Thread;

    .line 505
    sget-object v2, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    sget-wide v3, Ljava/util/concurrent/Exchanger;->BLOCKER:J

    invoke-virtual {v2, v9, v3, v4, v10}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_8f

    .line 507
    :cond_f8
    move-wide/from16 v19, v0

    .end local v0    # "ns":J
    .local v19, "ns":J
    :goto_fa
    sget-object v0, Ljava/util/concurrent/Exchanger;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/Exchanger;->SLOT:J

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object v4, v8

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11d

    .line 508
    if-eqz p2, :cond_117

    cmp-long v0, v19, v13

    if-gtz v0, :cond_117

    invoke-virtual {v9}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_117

    sget-object v0, Ljava/util/concurrent/Exchanger;->TIMED_OUT:Ljava/lang/Object;

    goto :goto_118

    :cond_117
    move-object v0, v10

    :goto_118
    move-object/from16 v18, v0

    .line 509
    move-wide/from16 v0, v19

    goto :goto_121

    .line 507
    :cond_11d
    move-wide/from16 v0, v19

    goto/16 :goto_8f

    .line 512
    .end local v19    # "ns":J
    .restart local v0    # "ns":J
    :cond_121
    :goto_121
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
    :cond_12d
    iput-object v10, v8, Ljava/util/concurrent/Exchanger$Node;->item:Ljava/lang/Object;

    goto/16 :goto_19
.end method


# virtual methods
.method public whitelist core-platform-api test-api exchange(Ljava/lang/Object;)Ljava/lang/Object;
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

.method public whitelist core-platform-api test-api exchange(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
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
