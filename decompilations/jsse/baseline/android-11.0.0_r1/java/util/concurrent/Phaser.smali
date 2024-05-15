.class public Ljava/util/concurrent/Phaser;
.super Ljava/lang/Object;
.source "Phaser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/Phaser$QNode;
    }
.end annotation


# static fields
.field private static final greylist-max-o COUNTS_MASK:J = 0xffffffffL

.field private static final greylist-max-o EMPTY:I = 0x1

.field private static final greylist-max-o MAX_PARTIES:I = 0xffff

.field private static final greylist-max-o MAX_PHASE:I = 0x7fffffff

.field private static final greylist-max-o NCPU:I

.field private static final greylist-max-o ONE_ARRIVAL:I = 0x1

.field private static final greylist-max-o ONE_DEREGISTER:I = 0x10001

.field private static final greylist-max-o ONE_PARTY:I = 0x10000

.field private static final greylist-max-o PARTIES_MASK:J = 0xffff0000L

.field private static final greylist-max-o PARTIES_SHIFT:I = 0x10

.field private static final greylist-max-o PHASE_SHIFT:I = 0x20

.field static final greylist-max-o SPINS_PER_ARRIVAL:I

.field private static final greylist-max-o STATE:J

.field private static final greylist-max-o TERMINATION_BIT:J = -0x8000000000000000L

.field private static final greylist-max-o U:Lsun/misc/Unsafe;

.field private static final greylist-max-o UNARRIVED_MASK:I = 0xffff


# instance fields
.field private final greylist-max-o evenQ:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/concurrent/Phaser$QNode;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o oddQ:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/concurrent/Phaser$QNode;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o parent:Ljava/util/concurrent/Phaser;

.field private final greylist-max-o root:Ljava/util/concurrent/Phaser;

.field private volatile greylist-max-o state:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 1007
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Ljava/util/concurrent/Phaser;->NCPU:I

    .line 1020
    const/4 v1, 0x2

    if-ge v0, v1, :cond_f

    const/4 v0, 0x1

    goto :goto_11

    :cond_f
    const/16 v0, 0x100

    :goto_11
    sput v0, Ljava/util/concurrent/Phaser;->SPINS_PER_ARRIVAL:I

    .line 1140
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Ljava/util/concurrent/Phaser;->U:Lsun/misc/Unsafe;

    .line 1144
    :try_start_19
    const-class v1, Ljava/util/concurrent/Phaser;

    const-string v2, "state"

    .line 1145
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/concurrent/Phaser;->STATE:J
    :try_end_27
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_19 .. :try_end_27} :catch_2b

    .line 1148
    nop

    .line 1152
    const-class v0, Ljava/util/concurrent/locks/LockSupport;

    .line 1153
    return-void

    .line 1146
    :catch_2b
    move-exception v0

    .line 1147
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor whitelist core-platform-api test-api <init>()V
    .registers 3

    .line 511
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/Phaser;-><init>(Ljava/util/concurrent/Phaser;I)V

    .line 512
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(I)V
    .registers 3
    .param p1, "parties"    # I

    .line 524
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Ljava/util/concurrent/Phaser;-><init>(Ljava/util/concurrent/Phaser;I)V

    .line 525
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/util/concurrent/Phaser;)V
    .registers 3
    .param p1, "parent"    # Ljava/util/concurrent/Phaser;

    .line 533
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/Phaser;-><init>(Ljava/util/concurrent/Phaser;I)V

    .line 534
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/util/concurrent/Phaser;I)V
    .registers 9
    .param p1, "parent"    # Ljava/util/concurrent/Phaser;
    .param p2, "parties"    # I

    .line 548
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 549
    ushr-int/lit8 v0, p2, 0x10

    if-nez v0, :cond_43

    .line 551
    const/4 v0, 0x0

    .line 552
    .local v0, "phase":I
    iput-object p1, p0, Ljava/util/concurrent/Phaser;->parent:Ljava/util/concurrent/Phaser;

    .line 553
    if-eqz p1, :cond_20

    .line 554
    iget-object v1, p1, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    .line 555
    .local v1, "root":Ljava/util/concurrent/Phaser;
    iput-object v1, p0, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    .line 556
    iget-object v2, v1, Ljava/util/concurrent/Phaser;->evenQ:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object v2, p0, Ljava/util/concurrent/Phaser;->evenQ:Ljava/util/concurrent/atomic/AtomicReference;

    .line 557
    iget-object v2, v1, Ljava/util/concurrent/Phaser;->oddQ:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object v2, p0, Ljava/util/concurrent/Phaser;->oddQ:Ljava/util/concurrent/atomic/AtomicReference;

    .line 558
    if-eqz p2, :cond_1f

    .line 559
    const/4 v2, 0x1

    invoke-direct {p1, v2}, Ljava/util/concurrent/Phaser;->doRegister(I)I

    move-result v0

    .line 560
    .end local v1    # "root":Ljava/util/concurrent/Phaser;
    :cond_1f
    goto :goto_30

    .line 562
    :cond_20
    iput-object p0, p0, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    .line 563
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v1, p0, Ljava/util/concurrent/Phaser;->evenQ:Ljava/util/concurrent/atomic/AtomicReference;

    .line 564
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v1, p0, Ljava/util/concurrent/Phaser;->oddQ:Ljava/util/concurrent/atomic/AtomicReference;

    .line 566
    :goto_30
    if-nez p2, :cond_35

    const-wide/16 v1, 0x1

    goto :goto_40

    .line 568
    :cond_35
    int-to-long v1, v0

    const/16 v3, 0x20

    shl-long/2addr v1, v3

    int-to-long v3, p2

    const/16 v5, 0x10

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    int-to-long v3, p2

    or-long/2addr v1, v3

    :goto_40
    iput-wide v1, p0, Ljava/util/concurrent/Phaser;->state:J

    .line 570
    return-void

    .line 550
    .end local v0    # "phase":I
    :cond_43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal number of parties"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o abortWait(I)I
    .registers 7
    .param p1, "phase"    # I

    .line 992
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_7

    iget-object v0, p0, Ljava/util/concurrent/Phaser;->evenQ:Ljava/util/concurrent/atomic/AtomicReference;

    goto :goto_9

    :cond_7
    iget-object v0, p0, Ljava/util/concurrent/Phaser;->oddQ:Ljava/util/concurrent/atomic/AtomicReference;

    .line 995
    .local v0, "head":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/util/concurrent/Phaser$QNode;>;"
    :goto_9
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Phaser$QNode;

    .line 996
    .local v1, "q":Ljava/util/concurrent/Phaser$QNode;
    iget-object v2, p0, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    iget-wide v2, v2, Ljava/util/concurrent/Phaser;->state:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    long-to-int v2, v2

    .line 997
    .local v2, "p":I
    if-eqz v1, :cond_34

    iget-object v3, v1, Ljava/util/concurrent/Phaser$QNode;->thread:Ljava/lang/Thread;

    move-object v4, v3

    .local v4, "t":Ljava/lang/Thread;
    if-eqz v3, :cond_23

    iget v3, v1, Ljava/util/concurrent/Phaser$QNode;->phase:I

    if-ne v3, v2, :cond_23

    goto :goto_34

    .line 999
    :cond_23
    iget-object v3, v1, Ljava/util/concurrent/Phaser$QNode;->next:Ljava/util/concurrent/Phaser$QNode;

    invoke-virtual {v0, v1, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    if-eqz v4, :cond_33

    .line 1000
    const/4 v3, 0x0

    iput-object v3, v1, Ljava/util/concurrent/Phaser$QNode;->thread:Ljava/lang/Thread;

    .line 1001
    invoke-static {v4}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 1003
    .end local v1    # "q":Ljava/util/concurrent/Phaser$QNode;
    .end local v2    # "p":I
    .end local v4    # "t":Ljava/lang/Thread;
    :cond_33
    goto :goto_9

    .line 998
    .restart local v1    # "q":Ljava/util/concurrent/Phaser$QNode;
    .restart local v2    # "p":I
    :cond_34
    :goto_34
    return v2
.end method

.method private static greylist-max-o arrivedOf(J)I
    .registers 5
    .param p0, "s"    # J

    .line 327
    long-to-int v0, p0

    .line 328
    .local v0, "counts":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    const/4 v1, 0x0

    goto :goto_d

    .line 329
    :cond_6
    ushr-int/lit8 v1, v0, 0x10

    const v2, 0xffff

    and-int/2addr v2, v0

    sub-int/2addr v1, v2

    .line 328
    :goto_d
    return v1
.end method

.method private greylist-max-o badArrive(J)Ljava/lang/String;
    .registers 5
    .param p1, "s"    # J

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempted arrival of unregistered party for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/Phaser;->stateToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 359
    return-object v0
.end method

.method private greylist-max-o badRegister(J)Ljava/lang/String;
    .registers 5
    .param p1, "s"    # J

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempt to register more than 65535 parties for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/Phaser;->stateToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 367
    return-object v0
.end method

.method private greylist-max-o doArrive(I)I
    .registers 24
    .param p1, "adjust"    # I

    .line 381
    move-object/from16 v8, p0

    iget-object v9, v8, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    .line 383
    .local v9, "root":Ljava/util/concurrent/Phaser;
    :goto_4
    if-ne v9, v8, :cond_9

    iget-wide v0, v8, Ljava/util/concurrent/Phaser;->state:J

    goto :goto_d

    :cond_9
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/Phaser;->reconcileState()J

    move-result-wide v0

    :goto_d
    move-wide v4, v0

    .line 384
    .local v4, "s":J
    const/16 v10, 0x20

    ushr-long v0, v4, v10

    long-to-int v11, v0

    .line 385
    .local v11, "phase":I
    if-gez v11, :cond_16

    .line 386
    return v11

    .line 387
    :cond_16
    long-to-int v12, v4

    .line 388
    .local v12, "counts":I
    const/4 v13, 0x1

    if-ne v12, v13, :cond_1c

    const/4 v0, 0x0

    goto :goto_20

    :cond_1c
    const v0, 0xffff

    and-int/2addr v0, v12

    :goto_20
    move v14, v0

    .line 389
    .local v14, "unarrived":I
    if-lez v14, :cond_9e

    .line 391
    sget-object v0, Ljava/util/concurrent/Phaser;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/Phaser;->STATE:J

    move/from16 v15, p1

    int-to-long v6, v15

    sub-long v6, v4, v6

    move-wide/from16 v16, v6

    .end local v4    # "s":J
    .local v16, "s":J
    move-object/from16 v1, p0

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 392
    if-ne v14, v13, :cond_9b

    .line 393
    const-wide v0, 0xffff0000L

    and-long v6, v16, v0

    .line 394
    .local v6, "n":J
    long-to-int v0, v6

    ushr-int/lit8 v4, v0, 0x10

    .line 395
    .local v4, "nextUnarrived":I
    const-wide/16 v0, 0x1

    if-ne v9, v8, :cond_73

    .line 396
    invoke-virtual {v8, v11, v4}, Ljava/util/concurrent/Phaser;->onAdvance(II)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 397
    const-wide/high16 v0, -0x8000000000000000L

    or-long/2addr v0, v6

    .end local v6    # "n":J
    .local v0, "n":J
    goto :goto_56

    .line 398
    .end local v0    # "n":J
    .restart local v6    # "n":J
    :cond_50
    if-nez v4, :cond_54

    .line 399
    or-long/2addr v0, v6

    .end local v6    # "n":J
    .restart local v0    # "n":J
    goto :goto_56

    .line 401
    .end local v0    # "n":J
    .restart local v6    # "n":J
    :cond_54
    int-to-long v0, v4

    or-long/2addr v0, v6

    .line 402
    .end local v6    # "n":J
    .restart local v0    # "n":J
    :goto_56
    add-int/lit8 v2, v11, 0x1

    const v3, 0x7fffffff

    and-int v13, v2, v3

    .line 403
    .local v13, "nextPhase":I
    int-to-long v2, v13

    shl-long/2addr v2, v10

    or-long v18, v0, v2

    .line 404
    .end local v0    # "n":J
    .local v18, "n":J
    sget-object v0, Ljava/util/concurrent/Phaser;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/Phaser;->STATE:J

    move-object/from16 v1, p0

    move v10, v4

    .end local v4    # "nextUnarrived":I
    .local v10, "nextUnarrived":I
    move-wide/from16 v4, v16

    move-wide/from16 v6, v18

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    .line 405
    invoke-direct {v8, v11}, Ljava/util/concurrent/Phaser;->releaseWaiters(I)V

    .line 406
    .end local v13    # "nextPhase":I
    goto :goto_9b

    .line 407
    .end local v10    # "nextUnarrived":I
    .end local v18    # "n":J
    .restart local v4    # "nextUnarrived":I
    .restart local v6    # "n":J
    :cond_73
    move v10, v4

    .end local v4    # "nextUnarrived":I
    .restart local v10    # "nextUnarrived":I
    if-nez v10, :cond_93

    .line 408
    iget-object v2, v8, Ljava/util/concurrent/Phaser;->parent:Ljava/util/concurrent/Phaser;

    const v3, 0x10001

    invoke-direct {v2, v3}, Ljava/util/concurrent/Phaser;->doArrive(I)I

    move-result v11

    .line 409
    sget-object v2, Ljava/util/concurrent/Phaser;->U:Lsun/misc/Unsafe;

    sget-wide v3, Ljava/util/concurrent/Phaser;->STATE:J

    or-long v18, v16, v0

    move-object v0, v2

    move-object/from16 v1, p0

    move-wide v2, v3

    move-wide/from16 v4, v16

    move-wide/from16 v20, v6

    .end local v6    # "n":J
    .local v20, "n":J
    move-wide/from16 v6, v18

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    goto :goto_9b

    .line 412
    .end local v20    # "n":J
    .restart local v6    # "n":J
    :cond_93
    move-wide/from16 v20, v6

    .end local v6    # "n":J
    .restart local v20    # "n":J
    iget-object v0, v8, Ljava/util/concurrent/Phaser;->parent:Ljava/util/concurrent/Phaser;

    invoke-direct {v0, v13}, Ljava/util/concurrent/Phaser;->doArrive(I)I

    move-result v11

    .line 414
    .end local v10    # "nextUnarrived":I
    .end local v20    # "n":J
    :cond_9b
    :goto_9b
    return v11

    .line 416
    .end local v11    # "phase":I
    .end local v12    # "counts":I
    .end local v14    # "unarrived":I
    .end local v16    # "s":J
    :cond_9c
    goto/16 :goto_4

    .line 390
    .local v4, "s":J
    .restart local v11    # "phase":I
    .restart local v12    # "counts":I
    .restart local v14    # "unarrived":I
    :cond_9e
    move/from16 v15, p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v8, v4, v5}, Ljava/util/concurrent/Phaser;->badArrive(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o doRegister(I)I
    .registers 23
    .param p1, "registrations"    # I

    .line 427
    move-object/from16 v9, p0

    move/from16 v10, p1

    int-to-long v0, v10

    const/16 v2, 0x10

    shl-long/2addr v0, v2

    int-to-long v2, v10

    or-long v11, v0, v2

    .line 428
    .local v11, "adjust":J
    iget-object v13, v9, Ljava/util/concurrent/Phaser;->parent:Ljava/util/concurrent/Phaser;

    .line 431
    .local v13, "parent":Ljava/util/concurrent/Phaser;
    :goto_d
    if-nez v13, :cond_12

    iget-wide v0, v9, Ljava/util/concurrent/Phaser;->state:J

    goto :goto_16

    :cond_12
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/Phaser;->reconcileState()J

    move-result-wide v0

    :goto_16
    move-wide v14, v0

    .line 432
    .local v14, "s":J
    long-to-int v7, v14

    .line 433
    .local v7, "counts":I
    ushr-int/lit8 v16, v7, 0x10

    .line 434
    .local v16, "parties":I
    const v0, 0xffff

    and-int v17, v7, v0

    .line 435
    .local v17, "unarrived":I
    sub-int v0, v0, v16

    if-gt v10, v0, :cond_b4

    .line 437
    const/16 v0, 0x20

    ushr-long v1, v14, v0

    long-to-int v8, v1

    .line 438
    .local v8, "phase":I
    if-gez v8, :cond_2c

    .line 439
    move v10, v8

    goto :goto_77

    .line 440
    :cond_2c
    const/4 v1, 0x1

    if-eq v7, v1, :cond_5d

    .line 441
    if-eqz v13, :cond_3d

    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/Phaser;->reconcileState()J

    move-result-wide v0

    cmp-long v0, v0, v14

    if-nez v0, :cond_3a

    goto :goto_3d

    :cond_3a
    move v10, v8

    goto/16 :goto_aa

    .line 442
    :cond_3d
    :goto_3d
    if-nez v17, :cond_48

    .line 443
    iget-object v0, v9, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    const/4 v1, 0x0

    invoke-direct {v0, v8, v1}, Ljava/util/concurrent/Phaser;->internalAwaitAdvance(ILjava/util/concurrent/Phaser$QNode;)I

    move v10, v8

    goto/16 :goto_aa

    .line 444
    :cond_48
    sget-object v1, Ljava/util/concurrent/Phaser;->U:Lsun/misc/Unsafe;

    sget-wide v3, Ljava/util/concurrent/Phaser;->STATE:J

    add-long v18, v14, v11

    move-object/from16 v2, p0

    move-wide v5, v14

    move/from16 v20, v7

    move v10, v8

    .end local v7    # "counts":I
    .end local v8    # "phase":I
    .local v10, "phase":I
    .local v20, "counts":I
    move-wide/from16 v7, v18

    invoke-virtual/range {v1 .. v8}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 445
    goto :goto_77

    .line 448
    .end local v10    # "phase":I
    .end local v20    # "counts":I
    .restart local v7    # "counts":I
    .restart local v8    # "phase":I
    :cond_5d
    move/from16 v20, v7

    move v10, v8

    .end local v7    # "counts":I
    .end local v8    # "phase":I
    .restart local v10    # "phase":I
    .restart local v20    # "counts":I
    if-nez v13, :cond_7a

    .line 449
    int-to-long v1, v10

    shl-long v0, v1, v0

    or-long v18, v0, v11

    .line 450
    .local v18, "next":J
    sget-object v1, Ljava/util/concurrent/Phaser;->U:Lsun/misc/Unsafe;

    sget-wide v3, Ljava/util/concurrent/Phaser;->STATE:J

    move-object/from16 v2, p0

    move-wide v5, v14

    move-wide/from16 v7, v18

    invoke-virtual/range {v1 .. v8}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 451
    nop

    .line 474
    .end local v10    # "phase":I
    .end local v14    # "s":J
    .end local v16    # "parties":I
    .end local v17    # "unarrived":I
    .end local v18    # "next":J
    .end local v20    # "counts":I
    .restart local v8    # "phase":I
    :goto_77
    move v8, v10

    .end local v8    # "phase":I
    .restart local v10    # "phase":I
    goto :goto_a8

    .line 452
    .restart local v14    # "s":J
    .restart local v16    # "parties":I
    .restart local v17    # "unarrived":I
    .restart local v20    # "counts":I
    :cond_79
    goto :goto_aa

    .line 454
    :cond_7a
    monitor-enter p0

    .line 455
    :try_start_7b
    iget-wide v2, v9, Ljava/util/concurrent/Phaser;->state:J

    cmp-long v2, v2, v14

    if-nez v2, :cond_a9

    .line 456
    invoke-direct {v13, v1}, Ljava/util/concurrent/Phaser;->doRegister(I)I

    move-result v1
    :try_end_85
    .catchall {:try_start_7b .. :try_end_85} :catchall_ae

    move v8, v1

    .line 457
    .end local v10    # "phase":I
    .restart local v8    # "phase":I
    if-gez v8, :cond_8a

    .line 458
    :try_start_88
    monitor-exit p0
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_b2

    goto :goto_a8

    .line 457
    :cond_8a
    move v10, v8

    .line 462
    .end local v8    # "phase":I
    .restart local v10    # "phase":I
    :goto_8b
    :try_start_8b
    sget-object v1, Ljava/util/concurrent/Phaser;->U:Lsun/misc/Unsafe;

    sget-wide v3, Ljava/util/concurrent/Phaser;->STATE:J

    int-to-long v5, v10

    shl-long/2addr v5, v0

    or-long v7, v5, v11

    .line 463
    move-object/from16 v2, p0

    move-wide v5, v14

    invoke-virtual/range {v1 .. v8}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v1

    if-nez v1, :cond_a6

    .line 465
    iget-wide v1, v9, Ljava/util/concurrent/Phaser;->state:J

    move-wide v14, v1

    .line 466
    iget-object v1, v9, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    iget-wide v1, v1, Ljava/util/concurrent/Phaser;->state:J

    ushr-long/2addr v1, v0

    long-to-int v10, v1

    goto :goto_8b

    .line 469
    :cond_a6
    monitor-exit p0

    move v8, v10

    .line 474
    .end local v10    # "phase":I
    .end local v14    # "s":J
    .end local v16    # "parties":I
    .end local v17    # "unarrived":I
    .end local v20    # "counts":I
    .restart local v8    # "phase":I
    :goto_a8
    return v8

    .line 471
    .end local v8    # "phase":I
    .restart local v10    # "phase":I
    .restart local v14    # "s":J
    .restart local v16    # "parties":I
    .restart local v17    # "unarrived":I
    .restart local v20    # "counts":I
    :cond_a9
    monitor-exit p0
    :try_end_aa
    .catchall {:try_start_8b .. :try_end_aa} :catchall_ae

    .line 473
    .end local v14    # "s":J
    .end local v16    # "parties":I
    .end local v17    # "unarrived":I
    .end local v20    # "counts":I
    :cond_aa
    :goto_aa
    move/from16 v10, p1

    goto/16 :goto_d

    .line 471
    .restart local v14    # "s":J
    .restart local v16    # "parties":I
    .restart local v17    # "unarrived":I
    .restart local v20    # "counts":I
    :catchall_ae
    move-exception v0

    move v8, v10

    .end local v10    # "phase":I
    .restart local v8    # "phase":I
    :goto_b0
    :try_start_b0
    monitor-exit p0
    :try_end_b1
    .catchall {:try_start_b0 .. :try_end_b1} :catchall_b2

    throw v0

    :catchall_b2
    move-exception v0

    goto :goto_b0

    .line 436
    .end local v8    # "phase":I
    .end local v20    # "counts":I
    .restart local v7    # "counts":I
    :cond_b4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v9, v14, v15}, Ljava/util/concurrent/Phaser;->badRegister(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o internalAwaitAdvance(ILjava/util/concurrent/Phaser$QNode;)I
    .registers 23
    .param p1, "phase"    # I
    .param p2, "node"    # Ljava/util/concurrent/Phaser$QNode;

    .line 1033
    move-object/from16 v8, p0

    move/from16 v9, p1

    add-int/lit8 v0, v9, -0x1

    invoke-direct {v8, v0}, Ljava/util/concurrent/Phaser;->releaseWaiters(I)V

    .line 1034
    const/4 v0, 0x0

    .line 1035
    .local v0, "queued":Z
    const/4 v1, 0x0

    .line 1036
    .local v1, "lastUnarrived":I
    sget v2, Ljava/util/concurrent/Phaser;->SPINS_PER_ARRIVAL:I

    move-object/from16 v10, p2

    move v11, v0

    .line 1039
    .end local v0    # "queued":Z
    .end local p2    # "node":Ljava/util/concurrent/Phaser$QNode;
    .local v2, "spins":I
    .local v10, "node":Ljava/util/concurrent/Phaser$QNode;
    .local v11, "queued":Z
    :goto_10
    iget-wide v3, v8, Ljava/util/concurrent/Phaser;->state:J

    move-wide v12, v3

    .local v12, "s":J
    const/16 v0, 0x20

    ushr-long/2addr v3, v0

    long-to-int v3, v3

    move v14, v3

    .local v14, "p":I
    if-ne v3, v9, :cond_8c

    .line 1040
    if-nez v10, :cond_55

    .line 1041
    long-to-int v0, v12

    const v3, 0xffff

    and-int/2addr v0, v3

    .line 1042
    .local v0, "unarrived":I
    if-eq v0, v1, :cond_2d

    move v1, v0

    sget v3, Ljava/util/concurrent/Phaser;->NCPU:I

    if-ge v0, v3, :cond_2d

    .line 1044
    sget v3, Ljava/util/concurrent/Phaser;->SPINS_PER_ARRIVAL:I

    add-int/2addr v2, v3

    move v15, v1

    goto :goto_2e

    .line 1042
    :cond_2d
    move v15, v1

    .line 1045
    .end local v1    # "lastUnarrived":I
    .local v15, "lastUnarrived":I
    :goto_2e
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    .line 1046
    .local v6, "interrupted":Z
    if-nez v6, :cond_38

    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_53

    :cond_38
    move/from16 v16, v2

    .line 1047
    .end local v2    # "spins":I
    .local v16, "spins":I
    new-instance v17, Ljava/util/concurrent/Phaser$QNode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v18, 0x0

    move-object/from16 v1, v17

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 p2, v0

    move v0, v6

    .end local v6    # "interrupted":Z
    .local v0, "interrupted":Z
    .local p2, "unarrived":I
    move-wide/from16 v6, v18

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/Phaser$QNode;-><init>(Ljava/util/concurrent/Phaser;IZZJ)V

    .line 1048
    .end local v10    # "node":Ljava/util/concurrent/Phaser$QNode;
    .local v1, "node":Ljava/util/concurrent/Phaser$QNode;
    iput-boolean v0, v1, Ljava/util/concurrent/Phaser$QNode;->wasInterrupted:Z

    move-object v10, v1

    move/from16 v2, v16

    .line 1050
    .end local v0    # "interrupted":Z
    .end local v1    # "node":Ljava/util/concurrent/Phaser$QNode;
    .end local v16    # "spins":I
    .end local p2    # "unarrived":I
    .restart local v2    # "spins":I
    .restart local v10    # "node":Ljava/util/concurrent/Phaser$QNode;
    :cond_53
    move v1, v15

    goto :goto_10

    .line 1051
    .end local v15    # "lastUnarrived":I
    .local v1, "lastUnarrived":I
    :cond_55
    invoke-virtual {v10}, Ljava/util/concurrent/Phaser$QNode;->isReleasable()Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 1052
    goto :goto_8c

    .line 1053
    :cond_5c
    if-nez v11, :cond_81

    .line 1054
    and-int/lit8 v3, v9, 0x1

    if-nez v3, :cond_65

    iget-object v3, v8, Ljava/util/concurrent/Phaser;->evenQ:Ljava/util/concurrent/atomic/AtomicReference;

    goto :goto_67

    :cond_65
    iget-object v3, v8, Ljava/util/concurrent/Phaser;->oddQ:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1055
    .local v3, "head":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/util/concurrent/Phaser$QNode;>;"
    :goto_67
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Phaser$QNode;

    iput-object v4, v10, Ljava/util/concurrent/Phaser$QNode;->next:Ljava/util/concurrent/Phaser$QNode;

    .line 1056
    .local v4, "q":Ljava/util/concurrent/Phaser$QNode;
    if-eqz v4, :cond_75

    iget v5, v4, Ljava/util/concurrent/Phaser$QNode;->phase:I

    if-ne v5, v9, :cond_80

    :cond_75
    iget-wide v5, v8, Ljava/util/concurrent/Phaser;->state:J

    ushr-long/2addr v5, v0

    long-to-int v0, v5

    if-ne v0, v9, :cond_80

    .line 1058
    invoke-virtual {v3, v4, v10}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    move v11, v0

    .line 1059
    .end local v3    # "head":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/util/concurrent/Phaser$QNode;>;"
    .end local v4    # "q":Ljava/util/concurrent/Phaser$QNode;
    :cond_80
    goto :goto_10

    .line 1062
    :cond_81
    :try_start_81
    invoke-static {v10}, Ljava/util/concurrent/ForkJoinPool;->managedBlock(Ljava/util/concurrent/ForkJoinPool$ManagedBlocker;)V
    :try_end_84
    .catch Ljava/lang/InterruptedException; {:try_start_81 .. :try_end_84} :catch_85

    .line 1065
    :goto_84
    goto :goto_10

    .line 1063
    :catch_85
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 1064
    .local v0, "cantHappen":Ljava/lang/InterruptedException;
    const/4 v3, 0x1

    iput-boolean v3, v10, Ljava/util/concurrent/Phaser$QNode;->wasInterrupted:Z

    .end local v0    # "cantHappen":Ljava/lang/InterruptedException;
    goto :goto_84

    .line 1069
    :cond_8c
    :goto_8c
    if-eqz v10, :cond_b2

    .line 1070
    iget-object v3, v10, Ljava/util/concurrent/Phaser$QNode;->thread:Ljava/lang/Thread;

    if-eqz v3, :cond_95

    .line 1071
    const/4 v3, 0x0

    iput-object v3, v10, Ljava/util/concurrent/Phaser$QNode;->thread:Ljava/lang/Thread;

    .line 1072
    :cond_95
    iget-boolean v3, v10, Ljava/util/concurrent/Phaser$QNode;->wasInterrupted:Z

    if-eqz v3, :cond_a4

    iget-boolean v3, v10, Ljava/util/concurrent/Phaser$QNode;->interruptible:Z

    if-nez v3, :cond_a4

    .line 1073
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 1074
    :cond_a4
    if-ne v14, v9, :cond_b2

    iget-wide v3, v8, Ljava/util/concurrent/Phaser;->state:J

    ushr-long/2addr v3, v0

    long-to-int v0, v3

    move v14, v0

    if-ne v0, v9, :cond_b2

    .line 1075
    invoke-direct/range {p0 .. p1}, Ljava/util/concurrent/Phaser;->abortWait(I)I

    move-result v0

    return v0

    .line 1077
    :cond_b2
    invoke-direct/range {p0 .. p1}, Ljava/util/concurrent/Phaser;->releaseWaiters(I)V

    .line 1078
    return v14
.end method

.method private static greylist-max-o partiesOf(J)I
    .registers 3
    .param p0, "s"    # J

    .line 319
    long-to-int v0, p0

    ushr-int/lit8 v0, v0, 0x10

    return v0
.end method

.method private static greylist-max-o phaseOf(J)I
    .registers 4
    .param p0, "s"    # J

    .line 323
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method

.method private greylist-max-o queueFor(I)Ljava/util/concurrent/atomic/AtomicReference;
    .registers 3
    .param p1, "phase"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/concurrent/Phaser$QNode;",
            ">;"
        }
    .end annotation

    .line 352
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_7

    iget-object v0, p0, Ljava/util/concurrent/Phaser;->evenQ:Ljava/util/concurrent/atomic/AtomicReference;

    goto :goto_9

    :cond_7
    iget-object v0, p0, Ljava/util/concurrent/Phaser;->oddQ:Ljava/util/concurrent/atomic/AtomicReference;

    :goto_9
    return-object v0
.end method

.method private greylist-max-o reconcileState()J
    .registers 16

    .line 487
    iget-object v0, p0, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    .line 488
    .local v0, "root":Ljava/util/concurrent/Phaser;
    iget-wide v1, p0, Ljava/util/concurrent/Phaser;->state:J

    .line 489
    .local v1, "s":J
    if-eq v0, p0, :cond_46

    move-wide v7, v1

    .line 492
    .end local v1    # "s":J
    .local v7, "s":J
    :goto_7
    iget-wide v1, v0, Ljava/util/concurrent/Phaser;->state:J

    const/16 v3, 0x20

    ushr-long/2addr v1, v3

    long-to-int v1, v1

    move v2, v1

    .local v2, "phase":I
    ushr-long v4, v7, v3

    long-to-int v4, v4

    if-eq v1, v4, :cond_45

    sget-object v1, Ljava/util/concurrent/Phaser;->U:Lsun/misc/Unsafe;

    sget-wide v5, Ljava/util/concurrent/Phaser;->STATE:J

    int-to-long v9, v2

    shl-long v3, v9, v3

    .line 497
    if-gez v2, :cond_23

    const-wide v9, 0xffffffffL

    and-long/2addr v9, v7

    goto :goto_36

    .line 498
    :cond_23
    long-to-int v9, v7

    ushr-int/lit8 v9, v9, 0x10

    move v10, v9

    .local v10, "p":I
    if-nez v9, :cond_2d

    const-wide/16 v11, 0x1

    move-wide v9, v11

    goto :goto_36

    .line 499
    :cond_2d
    const-wide v11, 0xffff0000L

    and-long/2addr v11, v7

    int-to-long v13, v10

    or-long/2addr v11, v13

    move-wide v9, v11

    .end local v10    # "p":I
    :goto_36
    or-long/2addr v9, v3

    move-wide v11, v9

    .line 495
    .end local v7    # "s":J
    .local v11, "s":J
    move-object v3, v1

    move-object v4, p0

    invoke-virtual/range {v3 .. v10}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v1

    if-nez v1, :cond_43

    .line 500
    iget-wide v7, p0, Ljava/util/concurrent/Phaser;->state:J

    .end local v11    # "s":J
    .restart local v7    # "s":J
    goto :goto_7

    .line 495
    .end local v7    # "s":J
    .restart local v11    # "s":J
    :cond_43
    move-wide v1, v11

    goto :goto_46

    .line 492
    .end local v11    # "s":J
    .restart local v7    # "s":J
    :cond_45
    move-wide v1, v7

    .line 502
    .end local v2    # "phase":I
    .end local v7    # "s":J
    .restart local v1    # "s":J
    :cond_46
    :goto_46
    return-wide v1
.end method

.method private greylist-max-o releaseWaiters(I)V
    .registers 8
    .param p1, "phase"    # I

    .line 971
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_7

    iget-object v0, p0, Ljava/util/concurrent/Phaser;->evenQ:Ljava/util/concurrent/atomic/AtomicReference;

    goto :goto_9

    :cond_7
    iget-object v0, p0, Ljava/util/concurrent/Phaser;->oddQ:Ljava/util/concurrent/atomic/AtomicReference;

    .line 972
    .local v0, "head":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/util/concurrent/Phaser$QNode;>;"
    :cond_9
    :goto_9
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Phaser$QNode;

    move-object v2, v1

    .local v2, "q":Ljava/util/concurrent/Phaser$QNode;
    if-eqz v1, :cond_32

    iget v1, v2, Ljava/util/concurrent/Phaser$QNode;->phase:I

    iget-object v3, p0, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    iget-wide v3, v3, Ljava/util/concurrent/Phaser;->state:J

    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    long-to-int v3, v3

    if-eq v1, v3, :cond_32

    .line 974
    iget-object v1, v2, Ljava/util/concurrent/Phaser$QNode;->next:Ljava/util/concurrent/Phaser$QNode;

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v2, Ljava/util/concurrent/Phaser$QNode;->thread:Ljava/lang/Thread;

    move-object v3, v1

    .local v3, "t":Ljava/lang/Thread;
    if-eqz v1, :cond_9

    .line 976
    const/4 v1, 0x0

    iput-object v1, v2, Ljava/util/concurrent/Phaser$QNode;->thread:Ljava/lang/Thread;

    .line 977
    invoke-static {v3}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    goto :goto_9

    .line 980
    .end local v3    # "t":Ljava/lang/Thread;
    :cond_32
    return-void
.end method

.method private greylist-max-o stateToString(J)Ljava/lang/String;
    .registers 5
    .param p1, "s"    # J

    .line 957
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[phase = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 958
    invoke-static {p1, p2}, Ljava/util/concurrent/Phaser;->phaseOf(J)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " parties = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 959
    invoke-static {p1, p2}, Ljava/util/concurrent/Phaser;->partiesOf(J)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " arrived = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 960
    invoke-static {p1, p2}, Ljava/util/concurrent/Phaser;->arrivedOf(J)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 957
    return-object v0
.end method

.method private static greylist-max-o unarrivedOf(J)I
    .registers 4
    .param p0, "s"    # J

    .line 314
    long-to-int v0, p0

    .line 315
    .local v0, "counts":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    const/4 v1, 0x0

    goto :goto_a

    :cond_6
    const v1, 0xffff

    and-int/2addr v1, v0

    :goto_a
    return v1
.end method


# virtual methods
.method public whitelist core-platform-api test-api arrive()I
    .registers 2

    .line 631
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/concurrent/Phaser;->doArrive(I)I

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api arriveAndAwaitAdvance()I
    .registers 22

    .line 674
    move-object/from16 v8, p0

    iget-object v9, v8, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    .line 676
    .local v9, "root":Ljava/util/concurrent/Phaser;
    :goto_4
    if-ne v9, v8, :cond_9

    iget-wide v0, v8, Ljava/util/concurrent/Phaser;->state:J

    goto :goto_d

    :cond_9
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/Phaser;->reconcileState()J

    move-result-wide v0

    :goto_d
    move-wide v4, v0

    .line 677
    .local v4, "s":J
    const/16 v10, 0x20

    ushr-long v0, v4, v10

    long-to-int v11, v0

    .line 678
    .local v11, "phase":I
    if-gez v11, :cond_16

    .line 679
    return v11

    .line 680
    :cond_16
    long-to-int v12, v4

    .line 681
    .local v12, "counts":I
    const/4 v13, 0x1

    if-ne v12, v13, :cond_1c

    const/4 v0, 0x0

    goto :goto_20

    :cond_1c
    const v0, 0xffff

    and-int/2addr v0, v12

    :goto_20
    move v14, v0

    .line 682
    .local v14, "unarrived":I
    if-lez v14, :cond_86

    .line 684
    sget-object v0, Ljava/util/concurrent/Phaser;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/Phaser;->STATE:J

    const-wide/16 v15, 0x1

    sub-long v6, v4, v15

    move-wide/from16 v17, v6

    .end local v4    # "s":J
    .local v17, "s":J
    move-object/from16 v1, p0

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 685
    if-le v14, v13, :cond_3d

    .line 686
    const/4 v0, 0x0

    invoke-direct {v9, v11, v0}, Ljava/util/concurrent/Phaser;->internalAwaitAdvance(ILjava/util/concurrent/Phaser$QNode;)I

    move-result v0

    return v0

    .line 687
    :cond_3d
    if-eq v9, v8, :cond_46

    .line 688
    iget-object v0, v8, Ljava/util/concurrent/Phaser;->parent:Ljava/util/concurrent/Phaser;

    invoke-virtual {v0}, Ljava/util/concurrent/Phaser;->arriveAndAwaitAdvance()I

    move-result v0

    return v0

    .line 689
    :cond_46
    const-wide v0, 0xffff0000L

    and-long v0, v17, v0

    .line 690
    .local v0, "n":J
    long-to-int v2, v0

    ushr-int/lit8 v13, v2, 0x10

    .line 691
    .local v13, "nextUnarrived":I
    invoke-virtual {v8, v11, v13}, Ljava/util/concurrent/Phaser;->onAdvance(II)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 692
    const-wide/high16 v2, -0x8000000000000000L

    or-long/2addr v0, v2

    goto :goto_60

    .line 693
    :cond_5a
    if-nez v13, :cond_5e

    .line 694
    or-long/2addr v0, v15

    goto :goto_60

    .line 696
    :cond_5e
    int-to-long v2, v13

    or-long/2addr v0, v2

    .line 697
    :goto_60
    add-int/lit8 v2, v11, 0x1

    const v3, 0x7fffffff

    and-int v15, v2, v3

    .line 698
    .local v15, "nextPhase":I
    int-to-long v2, v15

    shl-long/2addr v2, v10

    or-long v19, v0, v2

    .line 699
    .end local v0    # "n":J
    .local v19, "n":J
    sget-object v0, Ljava/util/concurrent/Phaser;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/Phaser;->STATE:J

    move-object/from16 v1, p0

    move-wide/from16 v4, v17

    move-wide/from16 v6, v19

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-nez v0, :cond_80

    .line 700
    iget-wide v0, v8, Ljava/util/concurrent/Phaser;->state:J

    ushr-long/2addr v0, v10

    long-to-int v0, v0

    return v0

    .line 701
    :cond_80
    invoke-direct {v8, v11}, Ljava/util/concurrent/Phaser;->releaseWaiters(I)V

    .line 702
    return v15

    .line 704
    .end local v11    # "phase":I
    .end local v12    # "counts":I
    .end local v13    # "nextUnarrived":I
    .end local v14    # "unarrived":I
    .end local v15    # "nextPhase":I
    .end local v17    # "s":J
    .end local v19    # "n":J
    :cond_84
    goto/16 :goto_4

    .line 683
    .restart local v4    # "s":J
    .restart local v11    # "phase":I
    .restart local v12    # "counts":I
    .restart local v14    # "unarrived":I
    :cond_86
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v8, v4, v5}, Ljava/util/concurrent/Phaser;->badArrive(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api arriveAndDeregister()I
    .registers 2

    .line 651
    const v0, 0x10001

    invoke-direct {p0, v0}, Ljava/util/concurrent/Phaser;->doArrive(I)I

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api awaitAdvance(I)I
    .registers 7
    .param p1, "phase"    # I

    .line 720
    iget-object v0, p0, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    .line 721
    .local v0, "root":Ljava/util/concurrent/Phaser;
    if-ne v0, p0, :cond_7

    iget-wide v1, p0, Ljava/util/concurrent/Phaser;->state:J

    goto :goto_b

    :cond_7
    invoke-direct {p0}, Ljava/util/concurrent/Phaser;->reconcileState()J

    move-result-wide v1

    .line 722
    .local v1, "s":J
    :goto_b
    const/16 v3, 0x20

    ushr-long v3, v1, v3

    long-to-int v3, v3

    .line 723
    .local v3, "p":I
    if-gez p1, :cond_13

    .line 724
    return p1

    .line 725
    :cond_13
    if-ne v3, p1, :cond_1b

    .line 726
    const/4 v4, 0x0

    invoke-direct {v0, p1, v4}, Ljava/util/concurrent/Phaser;->internalAwaitAdvance(ILjava/util/concurrent/Phaser$QNode;)I

    move-result v4

    return v4

    .line 727
    :cond_1b
    return v3
.end method

.method public whitelist core-platform-api test-api awaitAdvanceInterruptibly(I)I
    .registers 14
    .param p1, "phase"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 747
    iget-object v0, p0, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    .line 748
    .local v0, "root":Ljava/util/concurrent/Phaser;
    if-ne v0, p0, :cond_7

    iget-wide v1, p0, Ljava/util/concurrent/Phaser;->state:J

    goto :goto_b

    :cond_7
    invoke-direct {p0}, Ljava/util/concurrent/Phaser;->reconcileState()J

    move-result-wide v1

    .line 749
    .local v1, "s":J
    :goto_b
    const/16 v3, 0x20

    ushr-long v3, v1, v3

    long-to-int v3, v3

    .line 750
    .local v3, "p":I
    if-gez p1, :cond_13

    .line 751
    return p1

    .line 752
    :cond_13
    if-ne v3, p1, :cond_30

    .line 753
    new-instance v11, Ljava/util/concurrent/Phaser$QNode;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    move-object v4, v11

    move-object v5, p0

    move v6, p1

    invoke-direct/range {v4 .. v10}, Ljava/util/concurrent/Phaser$QNode;-><init>(Ljava/util/concurrent/Phaser;IZZJ)V

    .line 754
    .local v4, "node":Ljava/util/concurrent/Phaser$QNode;
    invoke-direct {v0, p1, v4}, Ljava/util/concurrent/Phaser;->internalAwaitAdvance(ILjava/util/concurrent/Phaser$QNode;)I

    move-result v3

    .line 755
    iget-boolean v5, v4, Ljava/util/concurrent/Phaser$QNode;->wasInterrupted:Z

    if-nez v5, :cond_2a

    goto :goto_30

    .line 756
    :cond_2a
    new-instance v5, Ljava/lang/InterruptedException;

    invoke-direct {v5}, Ljava/lang/InterruptedException;-><init>()V

    throw v5

    .line 758
    .end local v4    # "node":Ljava/util/concurrent/Phaser$QNode;
    :cond_30
    :goto_30
    return v3
.end method

.method public whitelist core-platform-api test-api awaitAdvanceInterruptibly(IJLjava/util/concurrent/TimeUnit;)I
    .registers 24
    .param p1, "phase"    # I
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 784
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-wide/from16 v9, p2

    move-object/from16 v11, p4

    invoke-virtual {v11, v9, v10}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v12

    .line 785
    .local v12, "nanos":J
    iget-object v14, v7, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    .line 786
    .local v14, "root":Ljava/util/concurrent/Phaser;
    if-ne v14, v7, :cond_13

    iget-wide v0, v7, Ljava/util/concurrent/Phaser;->state:J

    goto :goto_17

    :cond_13
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/Phaser;->reconcileState()J

    move-result-wide v0

    :goto_17
    move-wide v15, v0

    .line 787
    .local v15, "s":J
    const/16 v0, 0x20

    ushr-long v0, v15, v0

    long-to-int v5, v0

    .line 788
    .local v5, "p":I
    if-gez v8, :cond_20

    .line 789
    return v8

    .line 790
    :cond_20
    if-ne v5, v8, :cond_49

    .line 791
    new-instance v17, Ljava/util/concurrent/Phaser$QNode;

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v18, v5

    .end local v5    # "p":I
    .local v18, "p":I
    move-wide v5, v12

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/Phaser$QNode;-><init>(Ljava/util/concurrent/Phaser;IZZJ)V

    .line 792
    .local v0, "node":Ljava/util/concurrent/Phaser$QNode;
    invoke-direct {v14, v8, v0}, Ljava/util/concurrent/Phaser;->internalAwaitAdvance(ILjava/util/concurrent/Phaser$QNode;)I

    move-result v5

    .line 793
    .end local v18    # "p":I
    .restart local v5    # "p":I
    iget-boolean v1, v0, Ljava/util/concurrent/Phaser$QNode;->wasInterrupted:Z

    if-nez v1, :cond_43

    .line 795
    if-eq v5, v8, :cond_3d

    goto :goto_4b

    .line 796
    :cond_3d
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v1

    .line 794
    :cond_43
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 790
    .end local v0    # "node":Ljava/util/concurrent/Phaser$QNode;
    :cond_49
    move/from16 v18, v5

    .line 798
    :goto_4b
    return v5
.end method

.method public whitelist core-platform-api test-api bulkRegister(I)I
    .registers 3
    .param p1, "parties"    # I

    .line 611
    if-ltz p1, :cond_e

    .line 613
    if-nez p1, :cond_9

    .line 614
    invoke-virtual {p0}, Ljava/util/concurrent/Phaser;->getPhase()I

    move-result v0

    return v0

    .line 615
    :cond_9
    invoke-direct {p0, p1}, Ljava/util/concurrent/Phaser;->doRegister(I)I

    move-result v0

    return v0

    .line 612
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api forceTermination()V
    .registers 12

    .line 812
    iget-object v8, p0, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    .line 814
    .local v8, "root":Ljava/util/concurrent/Phaser;
    :cond_2
    iget-wide v0, v8, Ljava/util/concurrent/Phaser;->state:J

    move-wide v9, v0

    .local v9, "s":J
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_24

    .line 815
    sget-object v0, Ljava/util/concurrent/Phaser;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/Phaser;->STATE:J

    const-wide/high16 v4, -0x8000000000000000L

    or-long v6, v9, v4

    move-object v1, v8

    move-wide v4, v9

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 817
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/concurrent/Phaser;->releaseWaiters(I)V

    .line 818
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/concurrent/Phaser;->releaseWaiters(I)V

    .line 819
    return-void

    .line 822
    :cond_24
    return-void
.end method

.method public whitelist core-platform-api test-api getArrivedParties()I
    .registers 3

    .line 854
    invoke-direct {p0}, Ljava/util/concurrent/Phaser;->reconcileState()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/util/concurrent/Phaser;->arrivedOf(J)I

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api getParent()Ljava/util/concurrent/Phaser;
    .registers 2

    .line 874
    iget-object v0, p0, Ljava/util/concurrent/Phaser;->parent:Ljava/util/concurrent/Phaser;

    return-object v0
.end method

.method public final whitelist core-platform-api test-api getPhase()I
    .registers 4

    .line 834
    iget-object v0, p0, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    iget-wide v0, v0, Ljava/util/concurrent/Phaser;->state:J

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public whitelist core-platform-api test-api getRegisteredParties()I
    .registers 3

    .line 843
    iget-wide v0, p0, Ljava/util/concurrent/Phaser;->state:J

    invoke-static {v0, v1}, Ljava/util/concurrent/Phaser;->partiesOf(J)I

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api getRoot()Ljava/util/concurrent/Phaser;
    .registers 2

    .line 884
    iget-object v0, p0, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    return-object v0
.end method

.method public whitelist core-platform-api test-api getUnarrivedParties()I
    .registers 3

    .line 865
    invoke-direct {p0}, Ljava/util/concurrent/Phaser;->reconcileState()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/util/concurrent/Phaser;->unarrivedOf(J)I

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api isTerminated()Z
    .registers 5

    .line 893
    iget-object v0, p0, Ljava/util/concurrent/Phaser;->root:Ljava/util/concurrent/Phaser;

    iget-wide v0, v0, Ljava/util/concurrent/Phaser;->state:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method protected whitelist core-platform-api test-api onAdvance(II)Z
    .registers 4
    .param p1, "phase"    # I
    .param p2, "registeredParties"    # I

    .line 937
    if-nez p2, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method public whitelist core-platform-api test-api register()I
    .registers 2

    .line 588
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/concurrent/Phaser;->doRegister(I)I

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 3

    .line 950
    invoke-direct {p0}, Ljava/util/concurrent/Phaser;->reconcileState()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/Phaser;->stateToString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
