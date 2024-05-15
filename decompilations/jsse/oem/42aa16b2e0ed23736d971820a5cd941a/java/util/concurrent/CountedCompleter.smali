.class public abstract Ljava/util/concurrent/CountedCompleter;
.super Ljava/util/concurrent/ForkJoinTask;
.source "CountedCompleter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ForkJoinTask<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final greylist-max-o PENDING:J

.field private static final greylist-max-o U:Lsun/misc/Unsafe;

.field private static final whitelist serialVersionUID:J = 0x489d68f7081983ceL


# instance fields
.field final greylist-max-o completer:Ljava/util/concurrent/CountedCompleter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CountedCompleter<",
            "*>;"
        }
    .end annotation
.end field

.field volatile greylist-max-o pending:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 757
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Ljava/util/concurrent/CountedCompleter;->U:Lsun/misc/Unsafe;

    .line 761
    :try_start_6
    const-class v1, Ljava/util/concurrent/CountedCompleter;

    const-string v2, "pending"

    .line 762
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/concurrent/CountedCompleter;->PENDING:J
    :try_end_14
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_6 .. :try_end_14} :catch_16

    .line 765
    nop

    .line 766
    return-void

    .line 763
    :catch_16
    move-exception v0

    .line 764
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected constructor whitelist core-platform-api test-api <init>()V
    .registers 2

    .line 447
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;-><init>()V

    .line 448
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/concurrent/CountedCompleter;->completer:Ljava/util/concurrent/CountedCompleter;

    .line 449
    return-void
.end method

.method protected constructor whitelist core-platform-api test-api <init>(Ljava/util/concurrent/CountedCompleter;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter<",
            "*>;)V"
        }
    .end annotation

    .line 439
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    .local p1, "completer":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;-><init>()V

    .line 440
    iput-object p1, p0, Ljava/util/concurrent/CountedCompleter;->completer:Ljava/util/concurrent/CountedCompleter;

    .line 441
    return-void
.end method

.method protected constructor whitelist core-platform-api test-api <init>(Ljava/util/concurrent/CountedCompleter;I)V
    .registers 3
    .param p2, "initialPendingCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter<",
            "*>;I)V"
        }
    .end annotation

    .line 428
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    .local p1, "completer":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;-><init>()V

    .line 429
    iput-object p1, p0, Ljava/util/concurrent/CountedCompleter;->completer:Ljava/util/concurrent/CountedCompleter;

    .line 430
    iput p2, p0, Ljava/util/concurrent/CountedCompleter;->pending:I

    .line 431
    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api addToPendingCount(I)V
    .registers 5
    .param p1, "delta"    # I

    .line 527
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    sget-object v0, Ljava/util/concurrent/CountedCompleter;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava/util/concurrent/CountedCompleter;->PENDING:J

    invoke-virtual {v0, p0, v1, v2, p1}, Lsun/misc/Unsafe;->getAndAddInt(Ljava/lang/Object;JI)I

    .line 528
    return-void
.end method

.method public final whitelist core-platform-api test-api compareAndSetPendingCount(II)Z
    .registers 9
    .param p1, "expected"    # I
    .param p2, "count"    # I

    .line 539
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    sget-object v0, Ljava/util/concurrent/CountedCompleter;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/CountedCompleter;->PENDING:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api complete(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 633
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    .local p1, "rawResult":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CountedCompleter;->setRawResult(Ljava/lang/Object;)V

    .line 634
    invoke-virtual {p0, p0}, Ljava/util/concurrent/CountedCompleter;->onCompletion(Ljava/util/concurrent/CountedCompleter;)V

    .line 635
    invoke-virtual {p0}, Ljava/util/concurrent/CountedCompleter;->quietlyComplete()V

    .line 636
    iget-object v0, p0, Ljava/util/concurrent/CountedCompleter;->completer:Ljava/util/concurrent/CountedCompleter;

    move-object v1, v0

    .local v1, "p":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    if-eqz v0, :cond_11

    .line 637
    invoke-virtual {v1}, Ljava/util/concurrent/CountedCompleter;->tryComplete()V

    .line 638
    :cond_11
    return-void
.end method

.method public abstract whitelist core-platform-api test-api compute()V
.end method

.method public final whitelist core-platform-api test-api decrementPendingCountUnlessZero()I
    .registers 9

    .line 550
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    :cond_0
    iget v0, p0, Ljava/util/concurrent/CountedCompleter;->pending:I

    move v7, v0

    .local v7, "c":I
    if-eqz v0, :cond_13

    sget-object v1, Ljava/util/concurrent/CountedCompleter;->U:Lsun/misc/Unsafe;

    sget-wide v3, Ljava/util/concurrent/CountedCompleter;->PENDING:J

    add-int/lit8 v6, v7, -0x1

    .line 551
    move-object v2, p0

    move v5, v7

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    :cond_13
    return v7
.end method

.method protected final whitelist core-platform-api test-api exec()Z
    .registers 2

    .line 732
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CountedCompleter;->compute()V

    .line 733
    const/4 v0, 0x0

    return v0
.end method

.method public final whitelist core-platform-api test-api firstComplete()Ljava/util/concurrent/CountedCompleter;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CountedCompleter<",
            "*>;"
        }
    .end annotation

    .line 650
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    :goto_0
    iget v0, p0, Ljava/util/concurrent/CountedCompleter;->pending:I

    move v7, v0

    .local v7, "c":I
    if-nez v0, :cond_6

    .line 651
    return-object p0

    .line 652
    :cond_6
    sget-object v1, Ljava/util/concurrent/CountedCompleter;->U:Lsun/misc/Unsafe;

    sget-wide v3, Ljava/util/concurrent/CountedCompleter;->PENDING:J

    add-int/lit8 v6, v7, -0x1

    move-object v2, p0

    move v5, v7

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 653
    const/4 v0, 0x0

    return-object v0

    .line 652
    :cond_16
    goto :goto_0
.end method

.method public final whitelist core-platform-api test-api getCompleter()Ljava/util/concurrent/CountedCompleter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CountedCompleter<",
            "*>;"
        }
    .end annotation

    .line 500
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/CountedCompleter;->completer:Ljava/util/concurrent/CountedCompleter;

    return-object v0
.end method

.method public final whitelist core-platform-api test-api getPendingCount()I
    .registers 2

    .line 509
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    iget v0, p0, Ljava/util/concurrent/CountedCompleter;->pending:I

    return v0
.end method

.method public whitelist core-platform-api test-api getRawResult()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 745
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public final whitelist core-platform-api test-api getRoot()Ljava/util/concurrent/CountedCompleter;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CountedCompleter<",
            "*>;"
        }
    .end annotation

    .line 562
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    move-object v0, p0

    .line 563
    .local v0, "a":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :goto_1
    iget-object v1, v0, Ljava/util/concurrent/CountedCompleter;->completer:Ljava/util/concurrent/CountedCompleter;

    move-object v2, v1

    .local v2, "p":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    if-eqz v1, :cond_8

    .line 564
    move-object v0, v2

    goto :goto_1

    .line 565
    :cond_8
    return-object v0
.end method

.method public final whitelist core-platform-api test-api helpComplete(I)V
    .registers 6
    .param p1, "maxTasks"    # I

    .line 708
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    if-lez p1, :cond_20

    iget v0, p0, Ljava/util/concurrent/CountedCompleter;->status:I

    if-ltz v0, :cond_20

    .line 709
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    move-object v1, v0

    .local v1, "t":Ljava/lang/Thread;
    instance-of v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v0, :cond_1b

    .line 710
    move-object v0, v1

    check-cast v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    move-object v2, v0

    .local v2, "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    iget-object v0, v0, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    iget-object v3, v2, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .line 711
    invoke-virtual {v0, v3, p0, p1}, Ljava/util/concurrent/ForkJoinPool;->helpComplete(Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/CountedCompleter;I)I

    goto :goto_20

    .line 713
    .end local v2    # "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    :cond_1b
    sget-object v0, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/ForkJoinPool;->externalHelpComplete(Ljava/util/concurrent/CountedCompleter;I)I

    .line 715
    .end local v1    # "t":Ljava/lang/Thread;
    :cond_20
    :goto_20
    return-void
.end method

.method greylist-max-o internalPropagateException(Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "ex"    # Ljava/lang/Throwable;

    .line 721
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    move-object v0, p0

    .local v0, "a":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    move-object v1, v0

    .line 722
    .local v1, "s":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :goto_2
    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/CountedCompleter;->onExceptionalCompletion(Ljava/lang/Throwable;Ljava/util/concurrent/CountedCompleter;)Z

    move-result v2

    if-eqz v2, :cond_1b

    move-object v1, v0

    iget-object v2, v0, Ljava/util/concurrent/CountedCompleter;->completer:Ljava/util/concurrent/CountedCompleter;

    move-object v0, v2

    if-eqz v2, :cond_1b

    iget v2, v0, Ljava/util/concurrent/CountedCompleter;->status:I

    if-ltz v2, :cond_1b

    .line 724
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CountedCompleter;->recordExceptionalCompletion(Ljava/lang/Throwable;)I

    move-result v2

    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_1b

    .line 725
    goto :goto_2

    .line 726
    :cond_1b
    return-void
.end method

.method public final whitelist core-platform-api test-api nextComplete()Ljava/util/concurrent/CountedCompleter;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CountedCompleter<",
            "*>;"
        }
    .end annotation

    .line 676
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/CountedCompleter;->completer:Ljava/util/concurrent/CountedCompleter;

    move-object v1, v0

    .local v1, "p":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    if-eqz v0, :cond_a

    .line 677
    invoke-virtual {v1}, Ljava/util/concurrent/CountedCompleter;->firstComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v0

    return-object v0

    .line 679
    :cond_a
    invoke-virtual {p0}, Ljava/util/concurrent/CountedCompleter;->quietlyComplete()V

    .line 680
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist core-platform-api test-api onCompletion(Ljava/util/concurrent/CountedCompleter;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter<",
            "*>;)V"
        }
    .end annotation

    .line 469
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    .local p1, "caller":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    return-void
.end method

.method public whitelist core-platform-api test-api onExceptionalCompletion(Ljava/lang/Throwable;Ljava/util/concurrent/CountedCompleter;)Z
    .registers 4
    .param p1, "ex"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/concurrent/CountedCompleter<",
            "*>;)Z"
        }
    .end annotation

    .line 490
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    .local p2, "caller":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    const/4 v0, 0x1

    return v0
.end method

.method public final whitelist core-platform-api test-api propagateCompletion()V
    .registers 10

    .line 599
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    move-object v0, p0

    .local v0, "a":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    move-object v1, v0

    .line 601
    .local v1, "s":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :cond_2
    :goto_2
    iget v2, v0, Ljava/util/concurrent/CountedCompleter;->pending:I

    move v8, v2

    .local v8, "c":I
    if-nez v2, :cond_11

    .line 602
    move-object v1, v0

    iget-object v2, v0, Ljava/util/concurrent/CountedCompleter;->completer:Ljava/util/concurrent/CountedCompleter;

    move-object v0, v2

    if-nez v2, :cond_2

    .line 603
    invoke-virtual {v1}, Ljava/util/concurrent/CountedCompleter;->quietlyComplete()V

    .line 604
    return-void

    .line 607
    :cond_11
    sget-object v2, Ljava/util/concurrent/CountedCompleter;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/CountedCompleter;->PENDING:J

    add-int/lit8 v7, v8, -0x1

    move-object v3, v0

    move v6, v8

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 608
    return-void

    .line 607
    :cond_20
    goto :goto_2
.end method

.method public final whitelist core-platform-api test-api quietlyCompleteRoot()V
    .registers 4

    .line 688
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    move-object v0, p0

    .line 689
    .local v0, "a":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :goto_1
    iget-object v1, v0, Ljava/util/concurrent/CountedCompleter;->completer:Ljava/util/concurrent/CountedCompleter;

    move-object v2, v1

    .local v2, "p":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    if-nez v1, :cond_a

    .line 690
    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->quietlyComplete()V

    .line 691
    return-void

    .line 693
    :cond_a
    move-object v0, v2

    goto :goto_1
.end method

.method public final whitelist core-platform-api test-api setPendingCount(I)V
    .registers 2
    .param p1, "count"    # I

    .line 518
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    iput p1, p0, Ljava/util/concurrent/CountedCompleter;->pending:I

    .line 519
    return-void
.end method

.method protected whitelist core-platform-api test-api setRawResult(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 754
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    return-void
.end method

.method public final whitelist core-platform-api test-api tryComplete()V
    .registers 10

    .line 575
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    move-object v0, p0

    .local v0, "a":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    move-object v1, v0

    .line 577
    .local v1, "s":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :cond_2
    :goto_2
    iget v2, v0, Ljava/util/concurrent/CountedCompleter;->pending:I

    move v8, v2

    .local v8, "c":I
    if-nez v2, :cond_14

    .line 578
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CountedCompleter;->onCompletion(Ljava/util/concurrent/CountedCompleter;)V

    .line 579
    move-object v1, v0

    iget-object v2, v0, Ljava/util/concurrent/CountedCompleter;->completer:Ljava/util/concurrent/CountedCompleter;

    move-object v0, v2

    if-nez v2, :cond_2

    .line 580
    invoke-virtual {v1}, Ljava/util/concurrent/CountedCompleter;->quietlyComplete()V

    .line 581
    return-void

    .line 584
    :cond_14
    sget-object v2, Ljava/util/concurrent/CountedCompleter;->U:Lsun/misc/Unsafe;

    sget-wide v4, Ljava/util/concurrent/CountedCompleter;->PENDING:J

    add-int/lit8 v7, v8, -0x1

    move-object v3, v0

    move v6, v8

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 585
    return-void

    .line 584
    :cond_23
    goto :goto_2
.end method
