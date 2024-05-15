.class public Ljava/util/concurrent/FutureTask;
.super Ljava/lang/Object;
.source "FutureTask.java"

# interfaces
.implements Ljava/util/concurrent/RunnableFuture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/FutureTask$WaitNode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/RunnableFuture<",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final greylist-max-o CANCELLED:I = 0x4

.field private static final greylist-max-o COMPLETING:I = 0x1

.field private static final greylist EXCEPTIONAL:I = 0x3

.field private static final greylist-max-o INTERRUPTED:I = 0x6

.field private static final greylist-max-o INTERRUPTING:I = 0x5

.field private static final greylist-max-o NEW:I = 0x0

.field private static final greylist-max-o NORMAL:I = 0x2

.field private static final greylist-max-o RUNNER:J

.field private static final greylist-max-o STATE:J

.field private static final greylist-max-o U:Lsun/misc/Unsafe;

.field private static final greylist-max-o WAITERS:J


# instance fields
.field private greylist callable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TV;>;"
        }
    .end annotation
.end field

.field private greylist outcome:Ljava/lang/Object;

.field private volatile greylist-max-o runner:Ljava/lang/Thread;

.field private volatile greylist state:I

.field private volatile greylist-max-o waiters:Ljava/util/concurrent/FutureTask$WaitNode;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 487
    const-class v0, Ljava/util/concurrent/FutureTask;

    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v1

    sput-object v1, Ljava/util/concurrent/FutureTask;->U:Lsun/misc/Unsafe;

    .line 493
    :try_start_8
    const-string v2, "state"

    .line 494
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/FutureTask;->STATE:J

    .line 495
    const-string v2, "runner"

    .line 496
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/FutureTask;->RUNNER:J

    .line 497
    const-string v2, "waiters"

    .line 498
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/concurrent/FutureTask;->WAITERS:J
    :try_end_2c
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_8 .. :try_end_2c} :catch_30

    .line 501
    nop

    .line 505
    const-class v0, Ljava/util/concurrent/locks/LockSupport;

    .line 506
    return-void

    .line 499
    :catch_30
    move-exception v0

    .line 500
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .registers 4
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "TV;)V"
        }
    .end annotation

    .line 152
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    .local p2, "result":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    invoke-static {p1, p2}, Ljava/util/concurrent/Executors;->callable(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/FutureTask;->callable:Ljava/util/concurrent/Callable;

    .line 154
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/concurrent/FutureTask;->state:I

    .line 155
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/concurrent/Callable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)V"
        }
    .end annotation

    .line 133
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    if-eqz p1, :cond_b

    .line 136
    iput-object p1, p0, Ljava/util/concurrent/FutureTask;->callable:Ljava/util/concurrent/Callable;

    .line 137
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/concurrent/FutureTask;->state:I

    .line 138
    return-void

    .line 135
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private greylist-max-o awaitDone(ZJ)I
    .registers 15
    .param p1, "timed"    # Z
    .param p2, "nanos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 404
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    const-wide/16 v0, 0x0

    .line 405
    .local v0, "startTime":J
    const/4 v2, 0x0

    .line 406
    .local v2, "q":Ljava/util/concurrent/FutureTask$WaitNode;
    const/4 v3, 0x0

    move-object v8, v2

    move v9, v3

    .line 408
    .end local v2    # "q":Ljava/util/concurrent/FutureTask$WaitNode;
    .local v8, "q":Ljava/util/concurrent/FutureTask$WaitNode;
    .local v9, "queued":Z
    :goto_6
    iget v10, p0, Ljava/util/concurrent/FutureTask;->state:I

    .line 409
    .local v10, "s":I
    const/4 v2, 0x1

    if-le v10, v2, :cond_11

    .line 410
    if-eqz v8, :cond_10

    .line 411
    const/4 v2, 0x0

    iput-object v2, v8, Ljava/util/concurrent/FutureTask$WaitNode;->thread:Ljava/lang/Thread;

    .line 412
    :cond_10
    return v10

    .line 414
    :cond_11
    if-ne v10, v2, :cond_17

    .line 417
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_70

    .line 418
    :cond_17
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-nez v3, :cond_71

    .line 422
    const-wide/16 v3, 0x0

    if-nez v8, :cond_2f

    .line 423
    if-eqz p1, :cond_28

    cmp-long v2, p2, v3

    if-gtz v2, :cond_28

    .line 424
    return v10

    .line 425
    :cond_28
    new-instance v2, Ljava/util/concurrent/FutureTask$WaitNode;

    invoke-direct {v2}, Ljava/util/concurrent/FutureTask$WaitNode;-><init>()V

    move-object v8, v2

    .end local v8    # "q":Ljava/util/concurrent/FutureTask$WaitNode;
    .restart local v2    # "q":Ljava/util/concurrent/FutureTask$WaitNode;
    goto :goto_70

    .line 427
    .end local v2    # "q":Ljava/util/concurrent/FutureTask$WaitNode;
    .restart local v8    # "q":Ljava/util/concurrent/FutureTask$WaitNode;
    :cond_2f
    if-nez v9, :cond_41

    .line 428
    sget-object v2, Ljava/util/concurrent/FutureTask;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/FutureTask;->WAITERS:J

    iget-object v6, p0, Ljava/util/concurrent/FutureTask;->waiters:Ljava/util/concurrent/FutureTask$WaitNode;

    iput-object v6, v8, Ljava/util/concurrent/FutureTask$WaitNode;->next:Ljava/util/concurrent/FutureTask$WaitNode;

    move-object v3, p0

    move-object v7, v8

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    move v9, v2

    .end local v9    # "queued":Z
    .local v2, "queued":Z
    goto :goto_70

    .line 430
    .end local v2    # "queued":Z
    .restart local v9    # "queued":Z
    :cond_41
    if-eqz p1, :cond_6d

    .line 432
    cmp-long v5, v0, v3

    if-nez v5, :cond_53

    .line 433
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 434
    cmp-long v3, v0, v3

    if-nez v3, :cond_51

    .line 435
    const-wide/16 v0, 0x1

    .line 436
    :cond_51
    move-wide v3, p2

    .local v3, "parkNanos":J
    goto :goto_65

    .line 438
    .end local v3    # "parkNanos":J
    :cond_53
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    .line 439
    .local v3, "elapsed":J
    cmp-long v5, v3, p2

    if-ltz v5, :cond_62

    .line 440
    invoke-direct {p0, v8}, Ljava/util/concurrent/FutureTask;->removeWaiter(Ljava/util/concurrent/FutureTask$WaitNode;)V

    .line 441
    iget v2, p0, Ljava/util/concurrent/FutureTask;->state:I

    return v2

    .line 443
    :cond_62
    sub-long v5, p2, v3

    move-wide v3, v5

    .line 446
    .local v3, "parkNanos":J
    :goto_65
    iget v5, p0, Ljava/util/concurrent/FutureTask;->state:I

    if-ge v5, v2, :cond_6c

    .line 447
    invoke-static {p0, v3, v4}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 448
    .end local v3    # "parkNanos":J
    :cond_6c
    goto :goto_70

    .line 450
    :cond_6d
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    .line 451
    .end local v10    # "s":I
    :goto_70
    goto :goto_6

    .line 419
    .restart local v10    # "s":I
    :cond_71
    invoke-direct {p0, v8}, Ljava/util/concurrent/FutureTask;->removeWaiter(Ljava/util/concurrent/FutureTask$WaitNode;)V

    .line 420
    new-instance v2, Ljava/lang/InterruptedException;

    invoke-direct {v2}, Ljava/lang/InterruptedException;-><init>()V

    throw v2
.end method

.method private greylist-max-o finishCompletion()V
    .registers 8

    .line 365
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/FutureTask;->waiters:Ljava/util/concurrent/FutureTask$WaitNode;

    move-object v4, v0

    .local v4, "q":Ljava/util/concurrent/FutureTask$WaitNode;
    const/4 v6, 0x0

    if-eqz v0, :cond_24

    .line 366
    sget-object v0, Ljava/util/concurrent/FutureTask;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/FutureTask;->WAITERS:J

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    :goto_12
    iget-object v0, v4, Ljava/util/concurrent/FutureTask$WaitNode;->thread:Ljava/lang/Thread;

    .line 369
    .local v0, "t":Ljava/lang/Thread;
    if-eqz v0, :cond_1b

    .line 370
    iput-object v6, v4, Ljava/util/concurrent/FutureTask$WaitNode;->thread:Ljava/lang/Thread;

    .line 371
    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 373
    :cond_1b
    iget-object v1, v4, Ljava/util/concurrent/FutureTask$WaitNode;->next:Ljava/util/concurrent/FutureTask$WaitNode;

    .line 374
    .local v1, "next":Ljava/util/concurrent/FutureTask$WaitNode;
    if-nez v1, :cond_20

    .line 375
    goto :goto_24

    .line 376
    :cond_20
    iput-object v6, v4, Ljava/util/concurrent/FutureTask$WaitNode;->next:Ljava/util/concurrent/FutureTask$WaitNode;

    .line 377
    move-object v4, v1

    .line 378
    .end local v0    # "t":Ljava/lang/Thread;
    .end local v1    # "next":Ljava/util/concurrent/FutureTask$WaitNode;
    goto :goto_12

    .line 383
    .end local v4    # "q":Ljava/util/concurrent/FutureTask$WaitNode;
    :cond_24
    :goto_24
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->done()V

    .line 385
    iput-object v6, p0, Ljava/util/concurrent/FutureTask;->callable:Ljava/util/concurrent/Callable;

    .line 386
    return-void
.end method

.method private greylist-max-o handlePossibleCancellationInterrupt(I)V
    .registers 4
    .param p1, "s"    # I

    .line 333
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    const/4 v0, 0x5

    if-ne p1, v0, :cond_b

    .line 334
    :goto_3
    iget v1, p0, Ljava/util/concurrent/FutureTask;->state:I

    if-ne v1, v0, :cond_b

    .line 335
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_3

    .line 346
    :cond_b
    return-void
.end method

.method private greylist-max-o removeWaiter(Ljava/util/concurrent/FutureTask$WaitNode;)V
    .registers 11
    .param p1, "node"    # Ljava/util/concurrent/FutureTask$WaitNode;

    .line 465
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    if-eqz p1, :cond_2c

    .line 466
    const/4 v0, 0x0

    iput-object v0, p1, Ljava/util/concurrent/FutureTask$WaitNode;->thread:Ljava/lang/Thread;

    .line 469
    :goto_5
    const/4 v0, 0x0

    .local v0, "pred":Ljava/util/concurrent/FutureTask$WaitNode;
    iget-object v1, p0, Ljava/util/concurrent/FutureTask;->waiters:Ljava/util/concurrent/FutureTask$WaitNode;

    move-object v7, v1

    .local v7, "q":Ljava/util/concurrent/FutureTask$WaitNode;
    :goto_9
    if-eqz v7, :cond_2c

    .line 470
    iget-object v8, v7, Ljava/util/concurrent/FutureTask$WaitNode;->next:Ljava/util/concurrent/FutureTask$WaitNode;

    .line 471
    .local v8, "s":Ljava/util/concurrent/FutureTask$WaitNode;
    iget-object v1, v7, Ljava/util/concurrent/FutureTask$WaitNode;->thread:Ljava/lang/Thread;

    if-eqz v1, :cond_13

    .line 472
    move-object v0, v7

    goto :goto_2a

    .line 473
    :cond_13
    if-eqz v0, :cond_1c

    .line 474
    iput-object v8, v0, Ljava/util/concurrent/FutureTask$WaitNode;->next:Ljava/util/concurrent/FutureTask$WaitNode;

    .line 475
    iget-object v1, v0, Ljava/util/concurrent/FutureTask$WaitNode;->thread:Ljava/lang/Thread;

    if-nez v1, :cond_2a

    .line 476
    goto :goto_5

    .line 478
    :cond_1c
    sget-object v1, Ljava/util/concurrent/FutureTask;->U:Lsun/misc/Unsafe;

    sget-wide v3, Ljava/util/concurrent/FutureTask;->WAITERS:J

    move-object v2, p0

    move-object v5, v7

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 479
    goto :goto_5

    .line 469
    :cond_2a
    :goto_2a
    move-object v7, v8

    goto :goto_9

    .line 484
    .end local v0    # "pred":Ljava/util/concurrent/FutureTask$WaitNode;
    .end local v7    # "q":Ljava/util/concurrent/FutureTask$WaitNode;
    .end local v8    # "s":Ljava/util/concurrent/FutureTask$WaitNode;
    :cond_2c
    return-void
.end method

.method private greylist-max-o report(I)Ljava/lang/Object;
    .registers 5
    .param p1, "s"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 118
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/FutureTask;->outcome:Ljava/lang/Object;

    .line 119
    .local v0, "x":Ljava/lang/Object;
    const/4 v1, 0x2

    if-ne p1, v1, :cond_6

    .line 120
    return-object v0

    .line 121
    :cond_6
    const/4 v1, 0x4

    if-lt p1, v1, :cond_f

    .line 122
    new-instance v1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v1

    .line 123
    :cond_f
    new-instance v1, Ljava/util/concurrent/ExecutionException;

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    invoke-direct {v1, v2}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public whitelist test-api cancel(Z)Z
    .registers 11
    .param p1, "mayInterruptIfRunning"    # Z

    .line 166
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    iget v0, p0, Ljava/util/concurrent/FutureTask;->state:I

    if-nez v0, :cond_3c

    sget-object v0, Ljava/util/concurrent/FutureTask;->U:Lsun/misc/Unsafe;

    sget-wide v7, Ljava/util/concurrent/FutureTask;->STATE:J

    const/4 v5, 0x0

    .line 168
    if-eqz p1, :cond_d

    const/4 v1, 0x5

    goto :goto_e

    :cond_d
    const/4 v1, 0x4

    :goto_e
    move v6, v1

    .line 167
    move-object v1, v0

    move-object v2, p0

    move-wide v3, v7

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v1

    if-nez v1, :cond_19

    goto :goto_3c

    .line 171
    :cond_19
    if-eqz p1, :cond_36

    .line 173
    const/4 v1, 0x6

    :try_start_1c
    iget-object v2, p0, Ljava/util/concurrent/FutureTask;->runner:Ljava/lang/Thread;

    .line 174
    .local v2, "t":Ljava/lang/Thread;
    if-eqz v2, :cond_23

    .line 175
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_27

    .line 177
    .end local v2    # "t":Ljava/lang/Thread;
    :cond_23
    :try_start_23
    invoke-virtual {v0, p0, v7, v8, v1}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V

    .line 178
    goto :goto_36

    .line 177
    :catchall_27
    move-exception v0

    sget-object v2, Ljava/util/concurrent/FutureTask;->U:Lsun/misc/Unsafe;

    sget-wide v3, Ljava/util/concurrent/FutureTask;->STATE:J

    invoke-virtual {v2, p0, v3, v4, v1}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V

    .line 178
    nop

    .end local p0    # "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    .end local p1    # "mayInterruptIfRunning":Z
    throw v0
    :try_end_31
    .catchall {:try_start_23 .. :try_end_31} :catchall_31

    .line 181
    .restart local p0    # "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    .restart local p1    # "mayInterruptIfRunning":Z
    :catchall_31
    move-exception v0

    invoke-direct {p0}, Ljava/util/concurrent/FutureTask;->finishCompletion()V

    .line 182
    throw v0

    .line 181
    :cond_36
    :goto_36
    invoke-direct {p0}, Ljava/util/concurrent/FutureTask;->finishCompletion()V

    .line 182
    nop

    .line 183
    const/4 v0, 0x1

    return v0

    .line 169
    :cond_3c
    :goto_3c
    const/4 v0, 0x0

    return v0
.end method

.method protected whitelist test-api done()V
    .registers 1

    .line 219
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    return-void
.end method

.method public whitelist test-api get()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 190
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    iget v0, p0, Ljava/util/concurrent/FutureTask;->state:I

    .line 191
    .local v0, "s":I
    const/4 v1, 0x1

    if-gt v0, v1, :cond_c

    .line 192
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v1, v2, v3}, Ljava/util/concurrent/FutureTask;->awaitDone(ZJ)I

    move-result v0

    .line 193
    :cond_c
    invoke-direct {p0, v0}, Ljava/util/concurrent/FutureTask;->report(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 8
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 201
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    if-eqz p3, :cond_1e

    .line 203
    iget v0, p0, Ljava/util/concurrent/FutureTask;->state:I

    .line 204
    .local v0, "s":I
    const/4 v1, 0x1

    if-gt v0, v1, :cond_19

    .line 205
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Ljava/util/concurrent/FutureTask;->awaitDone(ZJ)I

    move-result v2

    move v0, v2

    if-le v2, v1, :cond_13

    goto :goto_19

    .line 206
    :cond_13
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v1

    .line 207
    :cond_19
    :goto_19
    invoke-direct {p0, v0}, Ljava/util/concurrent/FutureTask;->report(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 202
    .end local v0    # "s":I
    :cond_1e
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api isCancelled()Z
    .registers 3

    .line 158
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    iget v0, p0, Ljava/util/concurrent/FutureTask;->state:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public whitelist test-api isDone()Z
    .registers 2

    .line 162
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    iget v0, p0, Ljava/util/concurrent/FutureTask;->state:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist test-api run()V
    .registers 8

    .line 257
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    iget v0, p0, Ljava/util/concurrent/FutureTask;->state:I

    if-nez v0, :cond_48

    sget-object v1, Ljava/util/concurrent/FutureTask;->U:Lsun/misc/Unsafe;

    sget-wide v3, Ljava/util/concurrent/FutureTask;->RUNNER:J

    const/4 v5, 0x0

    .line 258
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_48

    .line 261
    :cond_15
    const/4 v0, 0x5

    const/4 v1, 0x0

    :try_start_17
    iget-object v2, p0, Ljava/util/concurrent/FutureTask;->callable:Ljava/util/concurrent/Callable;

    .line 262
    .local v2, "c":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    if-eqz v2, :cond_32

    iget v3, p0, Ljava/util/concurrent/FutureTask;->state:I
    :try_end_1d
    .catchall {:try_start_17 .. :try_end_1d} :catchall_3d

    if-nez v3, :cond_32

    .line 266
    :try_start_1f
    invoke-interface {v2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v3
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_25

    .line 267
    .local v3, "result":Ljava/lang/Object;, "TV;"
    const/4 v4, 0x1

    .line 272
    .local v4, "ran":Z
    goto :goto_2d

    .line 268
    .end local v3    # "result":Ljava/lang/Object;, "TV;"
    .end local v4    # "ran":Z
    :catchall_25
    move-exception v3

    .line 269
    .local v3, "ex":Ljava/lang/Throwable;
    const/4 v4, 0x0

    .line 270
    .local v4, "result":Ljava/lang/Object;, "TV;"
    const/4 v5, 0x0

    .line 271
    .local v5, "ran":Z
    :try_start_28
    invoke-virtual {p0, v3}, Ljava/util/concurrent/FutureTask;->setException(Ljava/lang/Throwable;)V

    move-object v3, v4

    move v4, v5

    .line 273
    .end local v5    # "ran":Z
    .local v3, "result":Ljava/lang/Object;, "TV;"
    .local v4, "ran":Z
    :goto_2d
    if-eqz v4, :cond_32

    .line 274
    invoke-virtual {p0, v3}, Ljava/util/concurrent/FutureTask;->set(Ljava/lang/Object;)V
    :try_end_32
    .catchall {:try_start_28 .. :try_end_32} :catchall_3d

    .line 279
    .end local v2    # "c":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    .end local v3    # "result":Ljava/lang/Object;, "TV;"
    .end local v4    # "ran":Z
    :cond_32
    iput-object v1, p0, Ljava/util/concurrent/FutureTask;->runner:Ljava/lang/Thread;

    .line 282
    iget v1, p0, Ljava/util/concurrent/FutureTask;->state:I

    .line 283
    .local v1, "s":I
    if-lt v1, v0, :cond_3b

    .line 284
    invoke-direct {p0, v1}, Ljava/util/concurrent/FutureTask;->handlePossibleCancellationInterrupt(I)V

    .line 285
    .end local v1    # "s":I
    :cond_3b
    nop

    .line 286
    return-void

    .line 279
    :catchall_3d
    move-exception v2

    iput-object v1, p0, Ljava/util/concurrent/FutureTask;->runner:Ljava/lang/Thread;

    .line 282
    iget v1, p0, Ljava/util/concurrent/FutureTask;->state:I

    .line 283
    .restart local v1    # "s":I
    if-lt v1, v0, :cond_47

    .line 284
    invoke-direct {p0, v1}, Ljava/util/concurrent/FutureTask;->handlePossibleCancellationInterrupt(I)V

    .line 285
    .end local v1    # "s":I
    :cond_47
    throw v2

    .line 259
    :cond_48
    :goto_48
    return-void
.end method

.method protected whitelist test-api runAndReset()Z
    .registers 9

    .line 298
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    iget v0, p0, Ljava/util/concurrent/FutureTask;->state:I

    const/4 v1, 0x0

    if-nez v0, :cond_44

    sget-object v2, Ljava/util/concurrent/FutureTask;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/FutureTask;->RUNNER:J

    const/4 v6, 0x0

    .line 299
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    move-object v3, p0

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_44

    .line 301
    :cond_16
    const/4 v0, 0x0

    .line 302
    .local v0, "ran":Z
    iget v2, p0, Ljava/util/concurrent/FutureTask;->state:I

    .line 304
    .local v2, "s":I
    const/4 v3, 0x5

    const/4 v4, 0x0

    :try_start_1b
    iget-object v5, p0, Ljava/util/concurrent/FutureTask;->callable:Ljava/util/concurrent/Callable;
    :try_end_1d
    .catchall {:try_start_1b .. :try_end_1d} :catchall_39

    .line 305
    .local v5, "c":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    if-eqz v5, :cond_2a

    if-nez v2, :cond_2a

    .line 307
    :try_start_21
    invoke-interface {v5}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_26

    .line 308
    const/4 v0, 0x1

    .line 311
    goto :goto_2a

    .line 309
    :catchall_26
    move-exception v6

    .line 310
    .local v6, "ex":Ljava/lang/Throwable;
    :try_start_27
    invoke-virtual {p0, v6}, Ljava/util/concurrent/FutureTask;->setException(Ljava/lang/Throwable;)V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_39

    .line 316
    .end local v5    # "c":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    .end local v6    # "ex":Ljava/lang/Throwable;
    :cond_2a
    :goto_2a
    iput-object v4, p0, Ljava/util/concurrent/FutureTask;->runner:Ljava/lang/Thread;

    .line 319
    iget v2, p0, Ljava/util/concurrent/FutureTask;->state:I

    .line 320
    if-lt v2, v3, :cond_33

    .line 321
    invoke-direct {p0, v2}, Ljava/util/concurrent/FutureTask;->handlePossibleCancellationInterrupt(I)V

    .line 323
    :cond_33
    if-eqz v0, :cond_38

    if-nez v2, :cond_38

    const/4 v1, 0x1

    :cond_38
    return v1

    .line 316
    :catchall_39
    move-exception v1

    iput-object v4, p0, Ljava/util/concurrent/FutureTask;->runner:Ljava/lang/Thread;

    .line 319
    iget v2, p0, Ljava/util/concurrent/FutureTask;->state:I

    .line 320
    if-lt v2, v3, :cond_43

    .line 321
    invoke-direct {p0, v2}, Ljava/util/concurrent/FutureTask;->handlePossibleCancellationInterrupt(I)V

    .line 322
    :cond_43
    throw v1

    .line 300
    .end local v0    # "ran":Z
    .end local v2    # "s":I
    :cond_44
    :goto_44
    return v1
.end method

.method protected whitelist test-api set(Ljava/lang/Object;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 231
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    .local p1, "v":Ljava/lang/Object;, "TV;"
    sget-object v6, Ljava/util/concurrent/FutureTask;->U:Lsun/misc/Unsafe;

    sget-wide v7, Ljava/util/concurrent/FutureTask;->STATE:J

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, v6

    move-object v1, p0

    move-wide v2, v7

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 232
    iput-object p1, p0, Ljava/util/concurrent/FutureTask;->outcome:Ljava/lang/Object;

    .line 233
    const/4 v0, 0x2

    invoke-virtual {v6, p0, v7, v8, v0}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V

    .line 234
    invoke-direct {p0}, Ljava/util/concurrent/FutureTask;->finishCompletion()V

    .line 236
    :cond_18
    return-void
.end method

.method protected whitelist test-api setException(Ljava/lang/Throwable;)V
    .registers 11
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 249
    .local p0, "this":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    sget-object v6, Ljava/util/concurrent/FutureTask;->U:Lsun/misc/Unsafe;

    sget-wide v7, Ljava/util/concurrent/FutureTask;->STATE:J

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, v6

    move-object v1, p0

    move-wide v2, v7

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 250
    iput-object p1, p0, Ljava/util/concurrent/FutureTask;->outcome:Ljava/lang/Object;

    .line 251
    const/4 v0, 0x3

    invoke-virtual {v6, p0, v7, v8, v0}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V

    .line 252
    invoke-direct {p0}, Ljava/util/concurrent/FutureTask;->finishCompletion()V

    .line 254
    :cond_18
    return-void
.end method
