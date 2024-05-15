.class public abstract Ljava/util/concurrent/ForkJoinTask;
.super Ljava/lang/Object;
.source "ForkJoinTask.java"

# interfaces
.implements Ljava/util/concurrent/Future;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;,
        Ljava/util/concurrent/ForkJoinTask$RunnableExecuteAction;,
        Ljava/util/concurrent/ForkJoinTask$AdaptedRunnableAction;,
        Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable;,
        Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future<",
        "TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final greylist-max-o CANCELLED:I = -0x40000000

.field static final greylist-max-o DONE_MASK:I = -0x10000000

.field static final greylist-max-o EXCEPTIONAL:I = -0x80000000

.field private static final greylist-max-o EXCEPTION_MAP_CAPACITY:I = 0x20

.field static final greylist-max-o NORMAL:I = -0x10000000

.field static final greylist-max-o SIGNAL:I = 0x10000

.field static final greylist-max-o SMASK:I = 0xffff

.field private static final greylist-max-o STATUS:J

.field private static final greylist-max-o U:Lsun/misc/Unsafe;

.field private static final greylist-max-o exceptionTable:[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

.field private static final greylist-max-o exceptionTableLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private static final greylist-max-o exceptionTableRefQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final whitelist serialVersionUID:J = -0x6b295cc9a986fd4fL


# instance fields
.field volatile greylist-max-o status:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 1519
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Ljava/util/concurrent/ForkJoinTask;->U:Lsun/misc/Unsafe;

    .line 1523
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Ljava/util/concurrent/ForkJoinTask;->exceptionTableLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1524
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Ljava/util/concurrent/ForkJoinTask;->exceptionTableRefQueue:Ljava/lang/ref/ReferenceQueue;

    .line 1525
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    sput-object v0, Ljava/util/concurrent/ForkJoinTask;->exceptionTable:[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    .line 1527
    :try_start_1a
    sget-object v0, Ljava/util/concurrent/ForkJoinTask;->U:Lsun/misc/Unsafe;

    const-class v1, Ljava/util/concurrent/ForkJoinTask;

    const-string v2, "status"

    .line 1528
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/concurrent/ForkJoinTask;->STATUS:J
    :try_end_2a
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1a .. :try_end_2a} :catch_2c

    .line 1531
    nop

    .line 1532
    return-void

    .line 1529
    :catch_2c
    move-exception v0

    .line 1530
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor whitelist core-platform-api test-api <init>()V
    .registers 1

    .line 208
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist core-platform-api test-api adapt(Ljava/lang/Runnable;)Ljava/util/concurrent/ForkJoinTask;
    .registers 2
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/ForkJoinTask<",
            "*>;"
        }
    .end annotation

    .line 1454
    new-instance v0, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnableAction;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnableAction;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static whitelist core-platform-api test-api adapt(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/ForkJoinTask;
    .registers 3
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/ForkJoinTask<",
            "TT;>;"
        }
    .end annotation

    .line 1468
    .local p1, "result":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable;

    invoke-direct {v0, p0, p1}, Ljava/util/concurrent/ForkJoinTask$AdaptedRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static whitelist core-platform-api test-api adapt(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/ForkJoinTask;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+TT;>;)",
            "Ljava/util/concurrent/ForkJoinTask<",
            "TT;>;"
        }
    .end annotation

    .line 1482
    .local p0, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<+TT;>;"
    new-instance v0, Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ForkJoinTask$AdaptedCallable;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method static final greylist-max-o cancelIgnoringExceptions(Ljava/util/concurrent/ForkJoinTask;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask<",
            "*>;)V"
        }
    .end annotation

    .line 508
    .local p0, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz p0, :cond_c

    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v0, :cond_c

    .line 510
    const/4 v0, 0x0

    :try_start_7
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ForkJoinTask;->cancel(Z)Z
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_b

    .line 512
    goto :goto_c

    .line 511
    :catchall_b
    move-exception v0

    .line 514
    :cond_c
    :goto_c
    return-void
.end method

.method private greylist-max-o clearExceptionalCompletion()V
    .registers 9

    .line 520
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 521
    .local v0, "h":I
    sget-object v1, Ljava/util/concurrent/ForkJoinTask;->exceptionTableLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 522
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 524
    :try_start_9
    sget-object v2, Ljava/util/concurrent/ForkJoinTask;->exceptionTable:[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    .line 525
    .local v2, "t":[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v3, v0

    .line 526
    .local v3, "i":I
    aget-object v4, v2, v3

    .line 527
    .local v4, "e":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    const/4 v5, 0x0

    .line 528
    .local v5, "pred":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :goto_12
    if-eqz v4, :cond_27

    .line 529
    iget-object v6, v4, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->next:Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    .line 530
    .local v6, "next":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    invoke-virtual {v4}, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->get()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, p0, :cond_24

    .line 531
    if-nez v5, :cond_21

    .line 532
    aput-object v6, v2, v3

    goto :goto_27

    .line 534
    :cond_21
    iput-object v6, v5, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->next:Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    .line 535
    goto :goto_27

    .line 537
    :cond_24
    move-object v5, v4

    .line 538
    move-object v4, v6

    .line 539
    .end local v6    # "next":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    goto :goto_12

    .line 540
    :cond_27
    :goto_27
    invoke-static {}, Ljava/util/concurrent/ForkJoinTask;->expungeStaleExceptions()V

    .line 541
    const/4 v6, 0x0

    iput v6, p0, Ljava/util/concurrent/ForkJoinTask;->status:I
    :try_end_2d
    .catchall {:try_start_9 .. :try_end_2d} :catchall_32

    .line 543
    .end local v2    # "t":[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    .end local v3    # "i":I
    .end local v4    # "e":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    .end local v5    # "pred":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 544
    nop

    .line 545
    return-void

    .line 543
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 544
    throw v2
.end method

.method private greylist-max-o doInvoke()I
    .registers 8

    .line 397
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    move-result v0

    move v1, v0

    .local v1, "s":I
    if-gez v0, :cond_9

    move v0, v1

    goto :goto_25

    .line 398
    :cond_9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    move-object v2, v0

    .local v2, "t":Ljava/lang/Thread;
    instance-of v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v0, :cond_21

    .line 400
    move-object v0, v2

    check-cast v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    move-object v3, v0

    .local v3, "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    iget-object v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    iget-object v4, v3, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    const-wide/16 v5, 0x0

    invoke-virtual {v0, v4, p0, v5, v6}, Ljava/util/concurrent/ForkJoinPool;->awaitJoin(Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/ForkJoinTask;J)I

    move-result v0

    goto :goto_25

    .line 401
    .end local v3    # "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    :cond_21
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->externalAwaitDone()I

    move-result v0

    .line 397
    .end local v2    # "t":Ljava/lang/Thread;
    :goto_25
    return v0
.end method

.method private greylist-max-o doJoin()I
    .registers 8

    .line 382
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    move v1, v0

    .local v1, "s":I
    if-gez v0, :cond_7

    move v0, v1

    goto :goto_33

    .line 383
    :cond_7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    move-object v2, v0

    .local v2, "t":Ljava/lang/Thread;
    instance-of v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v0, :cond_2f

    .line 385
    move-object v0, v2

    check-cast v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    move-object v3, v0

    .local v3, "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    iget-object v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-object v4, v0

    .local v4, "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->tryUnpush(Ljava/util/concurrent/ForkJoinTask;)Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    move-result v0

    move v1, v0

    if-gez v0, :cond_26

    move v0, v1

    goto :goto_33

    .line 386
    :cond_26
    iget-object v0, v3, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    const-wide/16 v5, 0x0

    invoke-virtual {v0, v4, p0, v5, v6}, Ljava/util/concurrent/ForkJoinPool;->awaitJoin(Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/ForkJoinTask;J)I

    move-result v0

    goto :goto_33

    .line 387
    .end local v3    # "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    .end local v4    # "w":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_2f
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->externalAwaitDone()I

    move-result v0

    .line 382
    .end local v2    # "t":Ljava/lang/Thread;
    :goto_33
    return v0
.end method

.method private static greylist-max-o expungeStaleExceptions()V
    .registers 7

    .line 604
    :cond_0
    :goto_0
    sget-object v0, Ljava/util/concurrent/ForkJoinTask;->exceptionTableRefQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    move-object v1, v0

    .local v1, "x":Ljava/lang/Object;
    if-eqz v0, :cond_2d

    .line 605
    instance-of v0, v1, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    if-eqz v0, :cond_0

    .line 606
    move-object v0, v1

    check-cast v0, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    iget v0, v0, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->hashCode:I

    .line 607
    .local v0, "hashCode":I
    sget-object v2, Ljava/util/concurrent/ForkJoinTask;->exceptionTable:[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    .line 608
    .local v2, "t":[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v3, v0

    .line 609
    .local v3, "i":I
    aget-object v4, v2, v3

    .line 610
    .local v4, "e":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    const/4 v5, 0x0

    .line 611
    .local v5, "pred":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :goto_1b
    if-eqz v4, :cond_2c

    .line 612
    iget-object v6, v4, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->next:Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    .line 613
    .local v6, "next":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    if-ne v4, v1, :cond_29

    .line 614
    if-nez v5, :cond_26

    .line 615
    aput-object v6, v2, v3

    goto :goto_2c

    .line 617
    :cond_26
    iput-object v6, v5, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->next:Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    .line 618
    goto :goto_2c

    .line 620
    :cond_29
    move-object v5, v4

    .line 621
    move-object v4, v6

    .line 622
    .end local v6    # "next":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    goto :goto_1b

    .line 623
    .end local v0    # "hashCode":I
    .end local v2    # "t":[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    .end local v3    # "i":I
    .end local v4    # "e":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    .end local v5    # "pred":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :cond_2c
    :goto_2c
    goto :goto_0

    .line 625
    .end local v1    # "x":Ljava/lang/Object;
    :cond_2d
    return-void
.end method

.method private greylist-max-o externalAwaitDone()I
    .registers 9

    .line 319
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    instance-of v0, p0, Ljava/util/concurrent/CountedCompleter;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 320
    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    move-object v2, p0

    check-cast v2, Ljava/util/concurrent/CountedCompleter;

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ForkJoinPool;->externalHelpComplete(Ljava/util/concurrent/CountedCompleter;I)I

    move-result v1

    goto :goto_1b

    .line 322
    :cond_f
    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ForkJoinPool;->tryExternalUnpush(Ljava/util/concurrent/ForkJoinTask;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    move-result v1

    :cond_1b
    :goto_1b
    move v0, v1

    .line 323
    .local v0, "s":I
    if-ltz v0, :cond_58

    iget v1, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    move v0, v1

    if-ltz v1, :cond_58

    .line 324
    const/4 v1, 0x0

    .line 326
    .local v1, "interrupted":Z
    :cond_24
    sget-object v2, Ljava/util/concurrent/ForkJoinTask;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/ForkJoinTask;->STATUS:J

    const/high16 v3, 0x10000

    or-int v7, v0, v3

    move-object v3, p0

    move v6, v0

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 327
    monitor-enter p0

    .line 328
    :try_start_35
    iget v2, p0, Ljava/util/concurrent/ForkJoinTask;->status:I
    :try_end_37
    .catchall {:try_start_35 .. :try_end_37} :catchall_47

    if-ltz v2, :cond_42

    .line 330
    const-wide/16 v2, 0x0

    :try_start_3b
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_3e
    .catch Ljava/lang/InterruptedException; {:try_start_3b .. :try_end_3e} :catch_3f
    .catchall {:try_start_3b .. :try_end_3e} :catchall_47

    goto :goto_41

    .line 331
    :catch_3f
    move-exception v2

    .line 332
    .local v2, "ie":Ljava/lang/InterruptedException;
    const/4 v1, 0x1

    .line 333
    .end local v2    # "ie":Ljava/lang/InterruptedException;
    :goto_41
    goto :goto_45

    .line 336
    :cond_42
    :try_start_42
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 337
    :goto_45
    monitor-exit p0

    goto :goto_4a

    :catchall_47
    move-exception v2

    monitor-exit p0
    :try_end_49
    .catchall {:try_start_42 .. :try_end_49} :catchall_47

    throw v2

    .line 339
    :cond_4a
    :goto_4a
    iget v2, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    move v0, v2

    if-gez v2, :cond_24

    .line 340
    if-eqz v1, :cond_58

    .line 341
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 343
    .end local v1    # "interrupted":Z
    :cond_58
    return v0
.end method

.method private greylist-max-o externalInterruptibleAwaitDone()I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 351
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_54

    .line 353
    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    move v1, v0

    .local v1, "s":I
    if-ltz v0, :cond_53

    .line 354
    instance-of v0, p0, Ljava/util/concurrent/CountedCompleter;

    const/4 v2, 0x0

    if-eqz v0, :cond_1a

    .line 355
    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    move-object v3, p0

    check-cast v3, Ljava/util/concurrent/CountedCompleter;

    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/ForkJoinPool;->externalHelpComplete(Ljava/util/concurrent/CountedCompleter;I)I

    move-result v2

    goto :goto_28

    .line 357
    :cond_1a
    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ForkJoinPool;->tryExternalUnpush(Ljava/util/concurrent/ForkJoinTask;)Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    move-result v2

    goto :goto_28

    .line 358
    :cond_27
    nop

    :goto_28
    move v1, v2

    if-ltz v2, :cond_53

    .line 359
    :cond_2b
    :goto_2b
    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    move v1, v0

    if-ltz v0, :cond_53

    .line 360
    sget-object v2, Ljava/util/concurrent/ForkJoinTask;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/ForkJoinTask;->STATUS:J

    const/high16 v0, 0x10000

    or-int v7, v1, v0

    move-object v3, p0

    move v6, v1

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 361
    monitor-enter p0

    .line 362
    :try_start_41
    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-ltz v0, :cond_4b

    .line 363
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V

    goto :goto_4e

    .line 365
    :cond_4b
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 366
    :goto_4e
    monitor-exit p0

    goto :goto_2b

    :catchall_50
    move-exception v0

    monitor-exit p0
    :try_end_52
    .catchall {:try_start_41 .. :try_end_52} :catchall_50

    throw v0

    .line 370
    :cond_53
    return v1

    .line 352
    .end local v1    # "s":I
    :cond_54
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public static whitelist core-platform-api test-api getPool()Ljava/util/concurrent/ForkJoinPool;
    .registers 2

    .line 1130
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 1131
    .local v0, "t":Ljava/lang/Thread;
    instance-of v1, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v1, :cond_e

    .line 1132
    move-object v1, v0

    check-cast v1, Ljava/util/concurrent/ForkJoinWorkerThread;

    iget-object v1, v1, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    .line 1131
    :goto_f
    return-object v1
.end method

.method public static whitelist core-platform-api test-api getQueuedTaskCount()I
    .registers 3

    .line 1174
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    move-object v1, v0

    .local v1, "t":Ljava/lang/Thread;
    instance-of v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v0, :cond_f

    .line 1175
    move-object v0, v1

    check-cast v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .local v0, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    goto :goto_13

    .line 1177
    .end local v0    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_f
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonSubmitterQueue()Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-result-object v0

    .line 1178
    .restart local v0    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :goto_13
    if-nez v0, :cond_17

    const/4 v2, 0x0

    goto :goto_1b

    :cond_17
    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->queueSize()I

    move-result v2

    :goto_1b
    return v2
.end method

.method public static whitelist core-platform-api test-api getSurplusQueuedTaskCount()I
    .registers 1

    .line 1195
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getSurplusQueuedTaskCount()I

    move-result v0

    return v0
.end method

.method private greylist-max-o getThrowableException()Ljava/lang/Throwable;
    .registers 15

    .line 562
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 564
    .local v0, "h":I
    sget-object v1, Ljava/util/concurrent/ForkJoinTask;->exceptionTableLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 565
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 567
    :try_start_9
    invoke-static {}, Ljava/util/concurrent/ForkJoinTask;->expungeStaleExceptions()V

    .line 568
    sget-object v2, Ljava/util/concurrent/ForkJoinTask;->exceptionTable:[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    .line 569
    .local v2, "t":[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    array-length v3, v2

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    and-int/2addr v3, v0

    aget-object v3, v2, v3

    .line 570
    .local v3, "e":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :goto_14
    if-eqz v3, :cond_20

    invoke-virtual {v3}, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->get()Ljava/lang/Object;

    move-result-object v5

    if-eq v5, p0, :cond_20

    .line 571
    iget-object v5, v3, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->next:Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :try_end_1e
    .catchall {:try_start_9 .. :try_end_1e} :catchall_7d

    move-object v3, v5

    goto :goto_14

    .line 573
    .end local v2    # "t":[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :cond_20
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 574
    nop

    .line 576
    if-eqz v3, :cond_7b

    iget-object v2, v3, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->ex:Ljava/lang/Throwable;

    move-object v5, v2

    .local v5, "ex":Ljava/lang/Throwable;
    if-nez v2, :cond_2c

    goto :goto_7b

    .line 578
    :cond_2c
    iget-wide v6, v3, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->thrower:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    cmp-long v2, v6, v8

    if-eqz v2, :cond_7a

    .line 580
    const/4 v2, 0x0

    .line 582
    .local v2, "noArgCtor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :try_start_3b
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    move v9, v8

    :goto_46
    if-ge v9, v7, :cond_6a

    aget-object v10, v6, v9

    .line 583
    .local v10, "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v10}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v11

    .line 584
    .local v11, "ps":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v12, v11

    if-nez v12, :cond_53

    .line 585
    move-object v2, v10

    goto :goto_67

    .line 586
    :cond_53
    array-length v12, v11

    if-ne v12, v4, :cond_67

    aget-object v12, v11, v8

    const-class v13, Ljava/lang/Throwable;

    if-ne v12, v13, :cond_67

    .line 587
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v5, v4, v8

    invoke-virtual {v10, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Throwable;

    return-object v4

    .line 582
    .end local v10    # "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v11    # "ps":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_67
    :goto_67
    add-int/lit8 v9, v9, 0x1

    goto :goto_46

    .line 589
    :cond_6a
    if-eqz v2, :cond_78

    .line 590
    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Throwable;

    .line 591
    .local v4, "wx":Ljava/lang/Throwable;
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_77} :catch_79

    .line 592
    return-object v4

    .line 595
    .end local v2    # "noArgCtor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v4    # "wx":Ljava/lang/Throwable;
    :cond_78
    goto :goto_7a

    .line 594
    :catch_79
    move-exception v2

    .line 597
    :cond_7a
    :goto_7a
    return-object v5

    .line 577
    .end local v5    # "ex":Ljava/lang/Throwable;
    :cond_7b
    :goto_7b
    const/4 v2, 0x0

    return-object v2

    .line 573
    .end local v3    # "e":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :catchall_7d
    move-exception v2

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 574
    throw v2
.end method

.method static final greylist-max-o helpExpungeStaleExceptions()V
    .registers 2

    .line 632
    sget-object v0, Ljava/util/concurrent/ForkJoinTask;->exceptionTableLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 633
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 635
    :try_start_8
    invoke-static {}, Ljava/util/concurrent/ForkJoinTask;->expungeStaleExceptions()V
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_f

    .line 637
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 638
    goto :goto_14

    .line 637
    :catchall_f
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 638
    throw v1

    .line 640
    :cond_14
    :goto_14
    return-void
.end method

.method public static whitelist core-platform-api test-api helpQuiesce()V
    .registers 4

    .line 1089
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    move-object v1, v0

    .local v1, "t":Ljava/lang/Thread;
    instance-of v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v0, :cond_14

    .line 1090
    move-object v0, v1

    check-cast v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    .line 1091
    .local v0, "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    iget-object v2, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    iget-object v3, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ForkJoinPool;->helpQuiescePool(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)V

    .line 1092
    .end local v0    # "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    goto :goto_17

    .line 1094
    :cond_14
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->quiesceCommonPool()V

    .line 1095
    :goto_17
    return-void
.end method

.method public static whitelist core-platform-api test-api inForkJoinPool()Z
    .registers 1

    .line 1144
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    return v0
.end method

.method public static whitelist core-platform-api test-api invokeAll(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/util/concurrent/ForkJoinTask<",
            "*>;>(",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    .line 818
    .local p0, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_63

    instance-of v0, p0, Ljava/util/List;

    if-nez v0, :cond_9

    goto :goto_63

    .line 823
    :cond_9
    move-object v0, p0

    check-cast v0, Ljava/util/List;

    .line 825
    .local v0, "ts":Ljava/util/List;, "Ljava/util/List<+Ljava/util/concurrent/ForkJoinTask<*>;>;"
    const/4 v1, 0x0

    .line 826
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 827
    .local v2, "last":I
    move v3, v2

    .local v3, "i":I
    :goto_14
    const/high16 v4, -0x10000000

    if-ltz v3, :cond_3e

    .line 828
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/ForkJoinTask;

    .line 829
    .local v5, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-nez v5, :cond_29

    .line 830
    if-nez v1, :cond_3b

    .line 831
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    move-object v1, v4

    goto :goto_3b

    .line 833
    :cond_29
    if-eqz v3, :cond_2f

    .line 834
    invoke-virtual {v5}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_3b

    .line 835
    :cond_2f
    invoke-direct {v5}, Ljava/util/concurrent/ForkJoinTask;->doInvoke()I

    move-result v6

    if-ge v6, v4, :cond_3b

    if-nez v1, :cond_3b

    .line 836
    invoke-virtual {v5}, Ljava/util/concurrent/ForkJoinTask;->getException()Ljava/lang/Throwable;

    move-result-object v1

    .line 827
    .end local v5    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_3b
    :goto_3b
    add-int/lit8 v3, v3, -0x1

    goto :goto_14

    .line 838
    .end local v3    # "i":I
    :cond_3e
    const/4 v3, 0x1

    .restart local v3    # "i":I
    :goto_3f
    if-gt v3, v2, :cond_5d

    .line 839
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/ForkJoinTask;

    .line 840
    .restart local v5    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v5, :cond_5a

    .line 841
    if-eqz v1, :cond_50

    .line 842
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ForkJoinTask;->cancel(Z)Z

    goto :goto_5a

    .line 843
    :cond_50
    invoke-direct {v5}, Ljava/util/concurrent/ForkJoinTask;->doJoin()I

    move-result v6

    if-ge v6, v4, :cond_5a

    .line 844
    invoke-virtual {v5}, Ljava/util/concurrent/ForkJoinTask;->getException()Ljava/lang/Throwable;

    move-result-object v1

    .line 838
    .end local v5    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_5a
    :goto_5a
    add-int/lit8 v3, v3, 0x1

    goto :goto_3f

    .line 847
    .end local v3    # "i":I
    :cond_5d
    if-eqz v1, :cond_62

    .line 848
    invoke-static {v1}, Ljava/util/concurrent/ForkJoinTask;->rethrow(Ljava/lang/Throwable;)V

    .line 849
    :cond_62
    return-object p0

    .line 819
    .end local v0    # "ts":Ljava/util/List;, "Ljava/util/List<+Ljava/util/concurrent/ForkJoinTask<*>;>;"
    .end local v1    # "ex":Ljava/lang/Throwable;
    .end local v2    # "last":I
    :cond_63
    :goto_63
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/util/concurrent/ForkJoinTask;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/concurrent/ForkJoinTask;

    invoke-static {v0}, Ljava/util/concurrent/ForkJoinTask;->invokeAll([Ljava/util/concurrent/ForkJoinTask;)V

    .line 820
    return-object p0
.end method

.method public static whitelist core-platform-api test-api invokeAll(Ljava/util/concurrent/ForkJoinTask;Ljava/util/concurrent/ForkJoinTask;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ForkJoinTask<",
            "*>;",
            "Ljava/util/concurrent/ForkJoinTask<",
            "*>;)V"
        }
    .end annotation

    .line 750
    .local p0, "t1":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    .local p1, "t2":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    invoke-virtual {p1}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    .line 751
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->doInvoke()I

    move-result v0

    const/high16 v1, -0x10000000

    and-int/2addr v0, v1

    move v2, v0

    .local v2, "s1":I
    if-eq v0, v1, :cond_10

    .line 752
    invoke-direct {p0, v2}, Ljava/util/concurrent/ForkJoinTask;->reportException(I)V

    .line 753
    :cond_10
    invoke-direct {p1}, Ljava/util/concurrent/ForkJoinTask;->doJoin()I

    move-result v0

    and-int/2addr v0, v1

    move v3, v0

    .local v3, "s2":I
    if-eq v0, v1, :cond_1b

    .line 754
    invoke-direct {p1, v3}, Ljava/util/concurrent/ForkJoinTask;->reportException(I)V

    .line 755
    :cond_1b
    return-void
.end method

.method public static varargs whitelist core-platform-api test-api invokeAll([Ljava/util/concurrent/ForkJoinTask;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/ForkJoinTask<",
            "*>;)V"
        }
    .end annotation

    .line 773
    .local p0, "tasks":[Ljava/util/concurrent/ForkJoinTask;, "[Ljava/util/concurrent/ForkJoinTask<*>;"
    const/4 v0, 0x0

    .line 774
    .local v0, "ex":Ljava/lang/Throwable;
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    .line 775
    .local v1, "last":I
    move v2, v1

    .local v2, "i":I
    :goto_5
    const/high16 v3, -0x10000000

    if-ltz v2, :cond_2b

    .line 776
    aget-object v4, p0, v2

    .line 777
    .local v4, "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-nez v4, :cond_16

    .line 778
    if-nez v0, :cond_28

    .line 779
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    move-object v0, v3

    goto :goto_28

    .line 781
    :cond_16
    if-eqz v2, :cond_1c

    .line 782
    invoke-virtual {v4}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_28

    .line 783
    :cond_1c
    invoke-direct {v4}, Ljava/util/concurrent/ForkJoinTask;->doInvoke()I

    move-result v5

    if-ge v5, v3, :cond_28

    if-nez v0, :cond_28

    .line 784
    invoke-virtual {v4}, Ljava/util/concurrent/ForkJoinTask;->getException()Ljava/lang/Throwable;

    move-result-object v0

    .line 775
    .end local v4    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_28
    :goto_28
    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    .line 786
    .end local v2    # "i":I
    :cond_2b
    const/4 v2, 0x1

    .restart local v2    # "i":I
    :goto_2c
    if-gt v2, v1, :cond_46

    .line 787
    aget-object v4, p0, v2

    .line 788
    .restart local v4    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    if-eqz v4, :cond_43

    .line 789
    if-eqz v0, :cond_39

    .line 790
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ForkJoinTask;->cancel(Z)Z

    goto :goto_43

    .line 791
    :cond_39
    invoke-direct {v4}, Ljava/util/concurrent/ForkJoinTask;->doJoin()I

    move-result v5

    if-ge v5, v3, :cond_43

    .line 792
    invoke-virtual {v4}, Ljava/util/concurrent/ForkJoinTask;->getException()Ljava/lang/Throwable;

    move-result-object v0

    .line 786
    .end local v4    # "t":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<*>;"
    :cond_43
    :goto_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 795
    .end local v2    # "i":I
    :cond_46
    if-eqz v0, :cond_4b

    .line 796
    invoke-static {v0}, Ljava/util/concurrent/ForkJoinTask;->rethrow(Ljava/lang/Throwable;)V

    .line 797
    :cond_4b
    return-void
.end method

.method protected static whitelist core-platform-api test-api peekNextLocalTask()Ljava/util/concurrent/ForkJoinTask;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ForkJoinTask<",
            "*>;"
        }
    .end annotation

    .line 1250
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    move-object v1, v0

    .local v1, "t":Ljava/lang/Thread;
    instance-of v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v0, :cond_f

    .line 1251
    move-object v0, v1

    check-cast v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .local v0, "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    goto :goto_13

    .line 1253
    .end local v0    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_f
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonSubmitterQueue()Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    move-result-object v0

    .line 1254
    .restart local v0    # "q":Ljava/util/concurrent/ForkJoinPool$WorkQueue;
    :goto_13
    if-nez v0, :cond_17

    const/4 v2, 0x0

    goto :goto_1b

    :cond_17
    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->peek()Ljava/util/concurrent/ForkJoinTask;

    move-result-object v2

    :goto_1b
    return-object v2
.end method

.method protected static whitelist core-platform-api test-api pollNextLocalTask()Ljava/util/concurrent/ForkJoinTask;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ForkJoinTask<",
            "*>;"
        }
    .end annotation

    .line 1268
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    move-object v1, v0

    .local v1, "t":Ljava/lang/Thread;
    instance-of v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v0, :cond_13

    .line 1269
    move-object v0, v1

    check-cast v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->nextLocalTask()Ljava/util/concurrent/ForkJoinTask;

    move-result-object v0

    goto :goto_14

    .line 1270
    :cond_13
    const/4 v0, 0x0

    .line 1268
    :goto_14
    return-object v0
.end method

.method protected static greylist-max-o pollSubmission()Ljava/util/concurrent/ForkJoinTask;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ForkJoinTask<",
            "*>;"
        }
    .end annotation

    .line 1307
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    move-object v1, v0

    .local v1, "t":Ljava/lang/Thread;
    instance-of v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v0, :cond_13

    .line 1308
    move-object v0, v1

    check-cast v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinPool;->pollSubmission()Ljava/util/concurrent/ForkJoinTask;

    move-result-object v0

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    .line 1307
    :goto_14
    return-object v0
.end method

.method protected static whitelist core-platform-api test-api pollTask()Ljava/util/concurrent/ForkJoinTask;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ForkJoinTask<",
            "*>;"
        }
    .end annotation

    .line 1288
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    move-object v1, v0

    .local v1, "t":Ljava/lang/Thread;
    instance-of v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v0, :cond_16

    .line 1289
    move-object v0, v1

    check-cast v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    move-object v2, v0

    .local v2, "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    iget-object v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    iget-object v3, v2, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ForkJoinPool;->nextTaskFor(Ljava/util/concurrent/ForkJoinPool$WorkQueue;)Ljava/util/concurrent/ForkJoinTask;

    move-result-object v0

    goto :goto_17

    .line 1290
    .end local v2    # "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    :cond_16
    const/4 v0, 0x0

    .line 1288
    :goto_17
    return-object v0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1512
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1513
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 1514
    .local v0, "ex":Ljava/lang/Object;
    if-eqz v0, :cond_f

    .line 1515
    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    invoke-direct {p0, v1}, Ljava/util/concurrent/ForkJoinTask;->setExceptionalCompletion(Ljava/lang/Throwable;)I

    .line 1516
    :cond_f
    return-void
.end method

.method private greylist-max-o reportException(I)V
    .registers 3
    .param p1, "s"    # I

    .line 666
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    const/high16 v0, -0x40000000    # -2.0f

    if-eq p1, v0, :cond_10

    .line 668
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_f

    .line 669
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->getThrowableException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Ljava/util/concurrent/ForkJoinTask;->rethrow(Ljava/lang/Throwable;)V

    .line 670
    :cond_f
    return-void

    .line 667
    :cond_10
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v0
.end method

.method static greylist-max-o rethrow(Ljava/lang/Throwable;)V
    .registers 1
    .param p0, "ex"    # Ljava/lang/Throwable;

    .line 646
    invoke-static {p0}, Ljava/util/concurrent/ForkJoinTask;->uncheckedThrow(Ljava/lang/Throwable;)V

    .line 647
    return-void
.end method

.method private greylist-max-o setCompletion(I)I
    .registers 10
    .param p1, "completion"    # I

    .line 264
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    :goto_0
    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    move v7, v0

    .local v7, "s":I
    if-gez v0, :cond_6

    .line 265
    return v7

    .line 266
    :cond_6
    sget-object v1, Ljava/util/concurrent/ForkJoinTask;->U:Lsun/misc/Unsafe;

    sget-wide v3, Ljava/util/concurrent/ForkJoinTask;->STATUS:J

    or-int v6, v7, p1

    move-object v2, p0

    move v5, v7

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 267
    ushr-int/lit8 v0, v7, 0x10

    if-eqz v0, :cond_21

    .line 268
    monitor-enter p0

    :try_start_19
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    goto :goto_21

    :catchall_1e
    move-exception v0

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_1e

    throw v0

    .line 269
    :cond_21
    :goto_21
    return p1

    .line 266
    :cond_22
    goto :goto_0
.end method

.method private greylist-max-o setExceptionalCompletion(Ljava/lang/Throwable;)I
    .registers 5
    .param p1, "ex"    # Ljava/lang/Throwable;

    .line 489
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ForkJoinTask;->recordExceptionalCompletion(Ljava/lang/Throwable;)I

    move-result v0

    .line 490
    .local v0, "s":I
    const/high16 v1, -0x10000000

    and-int/2addr v1, v0

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_e

    .line 491
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ForkJoinTask;->internalPropagateException(Ljava/lang/Throwable;)V

    .line 492
    :cond_e
    return v0
.end method

.method static greylist-max-o uncheckedThrow(Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            ")V^TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 656
    if-eqz p0, :cond_3

    .line 657
    throw p0

    .line 659
    :cond_3
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Unknown Exception"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1499
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1500
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->getException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1501
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api cancel(Z)Z
    .registers 5
    .param p1, "mayInterruptIfRunning"    # Z

    .line 880
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    const/high16 v0, -0x40000000    # -2.0f

    invoke-direct {p0, v0}, Ljava/util/concurrent/ForkJoinTask;->setCompletion(I)I

    move-result v1

    const/high16 v2, -0x10000000

    and-int/2addr v1, v2

    if-ne v1, v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public final whitelist core-platform-api test-api compareAndSetForkJoinTaskTag(SS)Z
    .registers 11
    .param p1, "expect"    # S
    .param p2, "update"    # S

    .line 1354
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    :goto_0
    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    move v7, v0

    .local v7, "s":I
    int-to-short v0, v0

    if-eq v0, p1, :cond_8

    .line 1355
    const/4 v0, 0x0

    return v0

    .line 1356
    :cond_8
    sget-object v1, Ljava/util/concurrent/ForkJoinTask;->U:Lsun/misc/Unsafe;

    sget-wide v3, Ljava/util/concurrent/ForkJoinTask;->STATUS:J

    const/high16 v0, -0x10000

    and-int/2addr v0, v7

    const v2, 0xffff

    and-int/2addr v2, p2

    or-int v6, v0, v2

    move-object v2, p0

    move v5, v7

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1358
    const/4 v0, 0x1

    return v0

    .line 1356
    :cond_1f
    goto :goto_0
.end method

.method public whitelist core-platform-api test-api complete(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 960
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ForkJoinTask;->setRawResult(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_a

    .line 964
    nop

    .line 965
    const/high16 v0, -0x10000000

    invoke-direct {p0, v0}, Ljava/util/concurrent/ForkJoinTask;->setCompletion(I)I

    .line 966
    return-void

    .line 961
    :catchall_a
    move-exception v0

    .line 962
    .local v0, "rex":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Ljava/util/concurrent/ForkJoinTask;->setExceptionalCompletion(Ljava/lang/Throwable;)I

    .line 963
    return-void
.end method

.method public whitelist core-platform-api test-api completeExceptionally(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "ex"    # Ljava/lang/Throwable;

    .line 940
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    instance-of v0, p1, Ljava/lang/RuntimeException;

    if-nez v0, :cond_f

    instance-of v0, p1, Ljava/lang/Error;

    if-eqz v0, :cond_9

    goto :goto_f

    .line 942
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_10

    .line 941
    :cond_f
    :goto_f
    move-object v0, p1

    .line 940
    :goto_10
    invoke-direct {p0, v0}, Ljava/util/concurrent/ForkJoinTask;->setExceptionalCompletion(Ljava/lang/Throwable;)I

    .line 943
    return-void
.end method

.method final greylist-max-o doExec()I
    .registers 4

    .line 283
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    move v1, v0

    .local v1, "s":I
    if-ltz v0, :cond_19

    .line 285
    :try_start_5
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->exec()Z

    move-result v0
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_13

    .line 288
    .local v0, "completed":Z
    nop

    .line 289
    if-eqz v0, :cond_19

    .line 290
    const/high16 v2, -0x10000000

    invoke-direct {p0, v2}, Ljava/util/concurrent/ForkJoinTask;->setCompletion(I)I

    move-result v1

    goto :goto_19

    .line 286
    .end local v0    # "completed":Z
    :catchall_13
    move-exception v0

    .line 287
    .local v0, "rex":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Ljava/util/concurrent/ForkJoinTask;->setExceptionalCompletion(Ljava/lang/Throwable;)I

    move-result v2

    return v2

    .line 292
    .end local v0    # "rex":Ljava/lang/Throwable;
    :cond_19
    :goto_19
    return v1
.end method

.method protected abstract whitelist core-platform-api test-api exec()Z
.end method

.method public final whitelist core-platform-api test-api fork()Ljava/util/concurrent/ForkJoinTask;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ForkJoinTask<",
            "TV;>;"
        }
    .end annotation

    .line 691
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    move-object v1, v0

    .local v1, "t":Ljava/lang/Thread;
    instance-of v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v0, :cond_12

    .line 692
    move-object v0, v1

    check-cast v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->push(Ljava/util/concurrent/ForkJoinTask;)V

    goto :goto_17

    .line 694
    :cond_12
    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ForkJoinPool;->externalPush(Ljava/util/concurrent/ForkJoinTask;)V

    .line 695
    :goto_17
    return-object p0
.end method

.method public final whitelist core-platform-api test-api get()Ljava/lang/Object;
    .registers 4
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

    .line 992
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v0, :cond_d

    .line 993
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->doJoin()I

    move-result v0

    goto :goto_11

    :cond_d
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->externalInterruptibleAwaitDone()I

    move-result v0

    .line 994
    .local v0, "s":I
    :goto_11
    const/high16 v1, -0x10000000

    and-int/2addr v1, v0

    move v0, v1

    const/high16 v2, -0x40000000    # -2.0f

    if-eq v1, v2, :cond_2c

    .line 996
    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_22

    .line 998
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->getRawResult()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 997
    :cond_22
    new-instance v1, Ljava/util/concurrent/ExecutionException;

    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->getThrowableException()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 995
    :cond_2c
    new-instance v1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v1
.end method

.method public final whitelist core-platform-api test-api get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 30
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

    .line 1018
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    move-object/from16 v7, p0

    move-wide/from16 v8, p1

    move-object/from16 v10, p3

    invoke-virtual {v10, v8, v9}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v11

    .line 1019
    .local v11, "nanos":J
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_107

    .line 1021
    iget v0, v7, Ljava/util/concurrent/ForkJoinTask;->status:I

    move v1, v0

    .local v1, "s":I
    if-ltz v0, :cond_d9

    const-wide/16 v13, 0x0

    cmp-long v0, v11, v13

    if-lez v0, :cond_d9

    .line 1022
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    add-long v15, v2, v11

    .line 1023
    .local v15, "d":J
    cmp-long v0, v15, v13

    if-nez v0, :cond_28

    const-wide/16 v2, 0x1

    goto :goto_29

    :cond_28
    move-wide v2, v15

    :goto_29
    move-wide v5, v2

    .line 1024
    .local v5, "deadline":J
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    .line 1025
    .local v3, "t":Ljava/lang/Thread;
    instance-of v0, v3, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v0, :cond_3f

    .line 1026
    move-object v0, v3

    check-cast v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    .line 1027
    .local v0, "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    iget-object v2, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    iget-object v4, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    invoke-virtual {v2, v4, v7, v5, v6}, Ljava/util/concurrent/ForkJoinPool;->awaitJoin(Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/ForkJoinTask;J)I

    move-result v1

    .line 1028
    .end local v0    # "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    goto/16 :goto_d9

    .line 1029
    :cond_3f
    instance-of v0, v7, Ljava/util/concurrent/CountedCompleter;

    const/4 v2, 0x0

    if-eqz v0, :cond_4e

    .line 1030
    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    move-object v4, v7

    check-cast v4, Ljava/util/concurrent/CountedCompleter;

    invoke-virtual {v0, v4, v2}, Ljava/util/concurrent/ForkJoinPool;->externalHelpComplete(Ljava/util/concurrent/CountedCompleter;I)I

    move-result v2

    goto :goto_5c

    .line 1032
    :cond_4e
    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    invoke-virtual {v0, v7}, Ljava/util/concurrent/ForkJoinPool;->tryExternalUnpush(Ljava/util/concurrent/ForkJoinTask;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 1033
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinTask;->doExec()I

    move-result v2

    goto :goto_5c

    :cond_5b
    nop

    :goto_5c
    move v1, v2

    if-ltz v2, :cond_d5

    .line 1035
    :goto_5f
    iget v0, v7, Ljava/util/concurrent/ForkJoinTask;->status:I

    move/from16 v17, v0

    .end local v1    # "s":I
    .local v17, "s":I
    if-ltz v0, :cond_ce

    .line 1036
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long v0, v5, v0

    move-wide/from16 v18, v0

    .local v18, "ns":J
    cmp-long v0, v0, v13

    if-lez v0, :cond_c7

    .line 1037
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v1, v18

    .end local v18    # "ns":J
    .local v1, "ns":J
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v18

    move-wide/from16 v20, v18

    .local v20, "ms":J
    cmp-long v0, v18, v13

    if-lez v0, :cond_b8

    sget-object v0, Ljava/util/concurrent/ForkJoinTask;->U:Lsun/misc/Unsafe;

    sget-wide v18, Ljava/util/concurrent/ForkJoinTask;->STATUS:J

    const/high16 v4, 0x10000

    or-int v22, v17, v4

    .line 1038
    move-wide/from16 v23, v1

    .end local v1    # "ns":J
    .local v23, "ns":J
    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v25, v3

    .end local v3    # "t":Ljava/lang/Thread;
    .local v25, "t":Ljava/lang/Thread;
    move-wide/from16 v3, v18

    move-wide/from16 v18, v5

    .end local v5    # "deadline":J
    .local v18, "deadline":J
    move/from16 v5, v17

    move/from16 v6, v22

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_b5

    .line 1039
    monitor-enter p0

    .line 1040
    :try_start_9d
    iget v0, v7, Ljava/util/concurrent/ForkJoinTask;->status:I
    :try_end_9f
    .catchall {:try_start_9d .. :try_end_9f} :catchall_ae

    if-ltz v0, :cond_a7

    .line 1041
    move-wide/from16 v1, v20

    .end local v20    # "ms":J
    .local v1, "ms":J
    :try_start_a3
    invoke-virtual {v7, v1, v2}, Ljava/lang/Object;->wait(J)V

    goto :goto_ac

    .line 1043
    .end local v1    # "ms":J
    .restart local v20    # "ms":J
    :cond_a7
    move-wide/from16 v1, v20

    .end local v20    # "ms":J
    .restart local v1    # "ms":J
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    .line 1044
    :goto_ac
    monitor-exit p0

    goto :goto_c0

    .end local v1    # "ms":J
    .restart local v20    # "ms":J
    :catchall_ae
    move-exception v0

    move-wide/from16 v1, v20

    .end local v20    # "ms":J
    .restart local v1    # "ms":J
    :goto_b1
    monitor-exit p0
    :try_end_b2
    .catchall {:try_start_a3 .. :try_end_b2} :catchall_b3

    throw v0

    :catchall_b3
    move-exception v0

    goto :goto_b1

    .line 1038
    .end local v1    # "ms":J
    .restart local v20    # "ms":J
    :cond_b5
    move-wide/from16 v1, v20

    .end local v20    # "ms":J
    .restart local v1    # "ms":J
    goto :goto_c0

    .line 1037
    .end local v18    # "deadline":J
    .end local v23    # "ns":J
    .end local v25    # "t":Ljava/lang/Thread;
    .local v1, "ns":J
    .restart local v3    # "t":Ljava/lang/Thread;
    .restart local v5    # "deadline":J
    .restart local v20    # "ms":J
    :cond_b8
    move-wide/from16 v23, v1

    move-object/from16 v25, v3

    move-wide/from16 v18, v5

    move-wide/from16 v1, v20

    .line 1035
    .end local v1    # "ns":J
    .end local v3    # "t":Ljava/lang/Thread;
    .end local v5    # "deadline":J
    .end local v20    # "ms":J
    .restart local v18    # "deadline":J
    .restart local v25    # "t":Ljava/lang/Thread;
    :goto_c0
    move/from16 v1, v17

    move-wide/from16 v5, v18

    move-object/from16 v3, v25

    goto :goto_5f

    .line 1036
    .end local v25    # "t":Ljava/lang/Thread;
    .restart local v3    # "t":Ljava/lang/Thread;
    .restart local v5    # "deadline":J
    .local v18, "ns":J
    :cond_c7
    move-object/from16 v25, v3

    move-wide/from16 v23, v18

    move-wide/from16 v18, v5

    .end local v3    # "t":Ljava/lang/Thread;
    .end local v5    # "deadline":J
    .local v18, "deadline":J
    .restart local v23    # "ns":J
    .restart local v25    # "t":Ljava/lang/Thread;
    goto :goto_d2

    .line 1035
    .end local v18    # "deadline":J
    .end local v23    # "ns":J
    .end local v25    # "t":Ljava/lang/Thread;
    .restart local v3    # "t":Ljava/lang/Thread;
    .restart local v5    # "deadline":J
    :cond_ce
    move-object/from16 v25, v3

    move-wide/from16 v18, v5

    .line 1049
    .end local v3    # "t":Ljava/lang/Thread;
    .end local v5    # "deadline":J
    .end local v15    # "d":J
    :goto_d2
    move/from16 v1, v17

    goto :goto_d9

    .line 1033
    .end local v17    # "s":I
    .local v1, "s":I
    .restart local v3    # "t":Ljava/lang/Thread;
    .restart local v5    # "deadline":J
    .restart local v15    # "d":J
    :cond_d5
    move-object/from16 v25, v3

    move-wide/from16 v18, v5

    .line 1049
    .end local v3    # "t":Ljava/lang/Thread;
    .end local v5    # "deadline":J
    .end local v15    # "d":J
    :cond_d9
    :goto_d9
    if-ltz v1, :cond_dd

    .line 1050
    iget v1, v7, Ljava/util/concurrent/ForkJoinTask;->status:I

    .line 1051
    :cond_dd
    const/high16 v0, -0x10000000

    and-int v2, v1, v0

    move v1, v2

    if-eq v2, v0, :cond_102

    .line 1052
    const/high16 v0, -0x40000000    # -2.0f

    if-eq v1, v0, :cond_fc

    .line 1054
    const/high16 v0, -0x80000000

    if-eq v1, v0, :cond_f2

    .line 1055
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v0

    .line 1056
    :cond_f2
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinTask;->getThrowableException()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 1053
    :cond_fc
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v0

    .line 1058
    :cond_102
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ForkJoinTask;->getRawResult()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1020
    .end local v1    # "s":I
    :cond_107
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public final whitelist core-platform-api test-api getException()Ljava/lang/Throwable;
    .registers 3

    .line 919
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    const/high16 v1, -0x10000000

    and-int/2addr v0, v1

    .line 920
    .local v0, "s":I
    if-lt v0, v1, :cond_9

    const/4 v1, 0x0

    goto :goto_17

    .line 921
    :cond_9
    const/high16 v1, -0x40000000    # -2.0f

    if-ne v0, v1, :cond_13

    new-instance v1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1}, Ljava/util/concurrent/CancellationException;-><init>()V

    goto :goto_17

    .line 922
    :cond_13
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->getThrowableException()Ljava/lang/Throwable;

    move-result-object v1

    .line 920
    :goto_17
    return-object v1
.end method

.method public final whitelist core-platform-api test-api getForkJoinTaskTag()S
    .registers 2

    .line 1320
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    int-to-short v0, v0

    return v0
.end method

.method public abstract whitelist core-platform-api test-api getRawResult()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation
.end method

.method greylist-max-o internalPropagateException(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .line 499
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    return-void
.end method

.method final greylist-max-o internalWait(J)V
    .registers 11
    .param p1, "timeout"    # J

    .line 303
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    move v7, v0

    .local v7, "s":I
    if-ltz v0, :cond_28

    sget-object v1, Ljava/util/concurrent/ForkJoinTask;->U:Lsun/misc/Unsafe;

    sget-wide v3, Ljava/util/concurrent/ForkJoinTask;->STATUS:J

    const/high16 v0, 0x10000

    or-int v6, v7, v0

    .line 304
    move-object v2, p0

    move v5, v7

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 305
    monitor-enter p0

    .line 306
    :try_start_16
    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I
    :try_end_18
    .catchall {:try_start_16 .. :try_end_18} :catchall_25

    if-ltz v0, :cond_20

    .line 307
    :try_start_1a
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_1d
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_1d} :catch_1e
    .catchall {:try_start_1a .. :try_end_1d} :catchall_25

    goto :goto_23

    :catch_1e
    move-exception v0

    goto :goto_23

    .line 309
    :cond_20
    :try_start_20
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 310
    :goto_23
    monitor-exit p0

    goto :goto_28

    :catchall_25
    move-exception v0

    monitor-exit p0
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_25

    throw v0

    .line 312
    :cond_28
    :goto_28
    return-void
.end method

.method public final whitelist core-platform-api test-api invoke()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 726
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->doInvoke()I

    move-result v0

    const/high16 v1, -0x10000000

    and-int/2addr v0, v1

    move v2, v0

    .local v2, "s":I
    if-eq v0, v1, :cond_d

    .line 727
    invoke-direct {p0, v2}, Ljava/util/concurrent/ForkJoinTask;->reportException(I)V

    .line 728
    :cond_d
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->getRawResult()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist core-platform-api test-api isCancelled()Z
    .registers 3

    .line 888
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    const/high16 v1, -0x10000000

    and-int/2addr v0, v1

    const/high16 v1, -0x40000000    # -2.0f

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public final whitelist core-platform-api test-api isCompletedAbnormally()Z
    .registers 3

    .line 897
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    const/high16 v1, -0x10000000

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final whitelist core-platform-api test-api isCompletedNormally()Z
    .registers 3

    .line 908
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    const/high16 v1, -0x10000000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public final whitelist core-platform-api test-api isDone()Z
    .registers 2

    .line 884
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    if-gez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public final whitelist core-platform-api test-api join()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 711
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->doJoin()I

    move-result v0

    const/high16 v1, -0x10000000

    and-int/2addr v0, v1

    move v2, v0

    .local v2, "s":I
    if-eq v0, v1, :cond_d

    .line 712
    invoke-direct {p0, v2}, Ljava/util/concurrent/ForkJoinTask;->reportException(I)V

    .line 713
    :cond_d
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->getRawResult()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist core-platform-api test-api quietlyComplete()V
    .registers 2

    .line 977
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    const/high16 v0, -0x10000000

    invoke-direct {p0, v0}, Ljava/util/concurrent/ForkJoinTask;->setCompletion(I)I

    .line 978
    return-void
.end method

.method public final whitelist core-platform-api test-api quietlyInvoke()V
    .registers 1

    .line 1077
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->doInvoke()I

    .line 1078
    return-void
.end method

.method public final whitelist core-platform-api test-api quietlyJoin()V
    .registers 1

    .line 1068
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->doJoin()I

    .line 1069
    return-void
.end method

.method final greylist-max-o recordExceptionalCompletion(Ljava/lang/Throwable;)I
    .registers 11
    .param p1, "ex"    # Ljava/lang/Throwable;

    .line 458
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    move v1, v0

    .local v1, "s":I
    if-ltz v0, :cond_42

    .line 459
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 460
    .local v0, "h":I
    sget-object v2, Ljava/util/concurrent/ForkJoinTask;->exceptionTableLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 461
    .local v2, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 463
    :try_start_e
    invoke-static {}, Ljava/util/concurrent/ForkJoinTask;->expungeStaleExceptions()V

    .line 464
    sget-object v3, Ljava/util/concurrent/ForkJoinTask;->exceptionTable:[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    .line 465
    .local v3, "t":[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    and-int/2addr v4, v0

    .line 466
    .local v4, "i":I
    aget-object v5, v3, v4

    .line 467
    .local v5, "e":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :goto_19
    if-nez v5, :cond_27

    .line 468
    new-instance v6, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;

    aget-object v7, v3, v4

    sget-object v8, Ljava/util/concurrent/ForkJoinTask;->exceptionTableRefQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v6, p0, p1, v7, v8}, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;-><init>(Ljava/util/concurrent/ForkJoinTask;Ljava/lang/Throwable;Ljava/util/concurrent/ForkJoinTask$ExceptionNode;Ljava/lang/ref/ReferenceQueue;)V

    aput-object v6, v3, v4

    .line 470
    goto :goto_2e

    .line 472
    :cond_27
    invoke-virtual {v5}, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->get()Ljava/lang/Object;

    move-result-object v6
    :try_end_2b
    .catchall {:try_start_e .. :try_end_2b} :catchall_3d

    if-ne v6, p0, :cond_39

    .line 473
    nop

    .line 476
    .end local v3    # "t":[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    .end local v4    # "i":I
    .end local v5    # "e":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :goto_2e
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 477
    nop

    .line 478
    const/high16 v3, -0x80000000

    invoke-direct {p0, v3}, Ljava/util/concurrent/ForkJoinTask;->setCompletion(I)I

    move-result v1

    goto :goto_42

    .line 466
    .restart local v3    # "t":[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    .restart local v4    # "i":I
    .restart local v5    # "e":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :cond_39
    :try_start_39
    iget-object v6, v5, Ljava/util/concurrent/ForkJoinTask$ExceptionNode;->next:Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :try_end_3b
    .catchall {:try_start_39 .. :try_end_3b} :catchall_3d

    move-object v5, v6

    goto :goto_19

    .line 476
    .end local v3    # "t":[Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    .end local v4    # "i":I
    .end local v5    # "e":Ljava/util/concurrent/ForkJoinTask$ExceptionNode;
    :catchall_3d
    move-exception v3

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 477
    throw v3

    .line 480
    .end local v0    # "h":I
    .end local v2    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    :cond_42
    :goto_42
    return v1
.end method

.method public whitelist core-platform-api test-api reinitialize()V
    .registers 3

    .line 1114
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    iget v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    const/high16 v1, -0x10000000

    and-int/2addr v0, v1

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_d

    .line 1115
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;->clearExceptionalCompletion()V

    goto :goto_10

    .line 1117
    :cond_d
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    .line 1118
    :goto_10
    return-void
.end method

.method public final whitelist core-platform-api test-api setForkJoinTaskTag(S)S
    .registers 9
    .param p1, "newValue"    # S

    .line 1332
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    :goto_0
    sget-object v0, Ljava/util/concurrent/ForkJoinTask;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ForkJoinTask;->STATUS:J

    iget v4, p0, Ljava/util/concurrent/ForkJoinTask;->status:I

    move v6, v4

    .local v6, "s":I
    const/high16 v1, -0x10000

    and-int/2addr v1, v6

    const v5, 0xffff

    and-int/2addr v5, p1

    or-int/2addr v5, v1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1334
    int-to-short v0, v6

    return v0

    .line 1332
    :cond_18
    goto :goto_0
.end method

.method protected abstract whitelist core-platform-api test-api setRawResult(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation
.end method

.method public whitelist core-platform-api test-api tryUnfork()Z
    .registers 3

    .line 1159
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask;, "Ljava/util/concurrent/ForkJoinTask<TV;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    move-object v1, v0

    .local v1, "t":Ljava/lang/Thread;
    instance-of v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v0, :cond_13

    .line 1160
    move-object v0, v1

    check-cast v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    iget-object v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ForkJoinPool$WorkQueue;->tryUnpush(Ljava/util/concurrent/ForkJoinTask;)Z

    move-result v0

    goto :goto_19

    .line 1161
    :cond_13
    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ForkJoinPool;->tryExternalUnpush(Ljava/util/concurrent/ForkJoinTask;)Z

    move-result v0

    .line 1159
    :goto_19
    return v0
.end method
