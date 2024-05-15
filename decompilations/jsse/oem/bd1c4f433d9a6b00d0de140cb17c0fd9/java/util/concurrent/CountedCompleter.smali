.class public abstract Ljava/util/concurrent/CountedCompleter;
.super Ljava/util/concurrent/ForkJoinTask;
.source "CountedCompleter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ForkJoinTask",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final PENDING:J

.field private static final U:Lsun/misc/Unsafe;

.field private static final serialVersionUID:J = 0x489d68f7081983ceL


# instance fields
.field final completer:Ljava/util/concurrent/CountedCompleter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;"
        }
    .end annotation
.end field

.field volatile pending:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 757
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v1

    sput-object v1, Ljava/util/concurrent/CountedCompleter;->U:Lsun/misc/Unsafe;

    .line 761
    :try_start_6
    sget-object v1, Ljava/util/concurrent/CountedCompleter;->U:Lsun/misc/Unsafe;

    .line 762
    const-class v2, Ljava/util/concurrent/CountedCompleter;

    const-string/jumbo v3, "pending"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 761
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/CountedCompleter;->PENDING:J
    :try_end_17
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_6 .. :try_end_17} :catch_18

    .line 412
    return-void

    .line 763
    :catch_18
    move-exception v0

    .line 764
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 447
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;-><init>()V

    .line 448
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/concurrent/CountedCompleter;->completer:Ljava/util/concurrent/CountedCompleter;

    .line 449
    return-void
.end method

.method protected constructor <init>(Ljava/util/concurrent/CountedCompleter;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 439
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    .local p1, "completer":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;-><init>()V

    .line 440
    iput-object p1, p0, Ljava/util/concurrent/CountedCompleter;->completer:Ljava/util/concurrent/CountedCompleter;

    .line 441
    return-void
.end method

.method protected constructor <init>(Ljava/util/concurrent/CountedCompleter;I)V
    .registers 3
    .param p2, "initialPendingCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 427
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
.method public final addToPendingCount(I)V
    .registers 6
    .param p1, "delta"    # I

    .prologue
    .line 527
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    sget-object v0, Ljava/util/concurrent/CountedCompleter;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/CountedCompleter;->PENDING:J

    invoke-virtual {v0, p0, v2, v3, p1}, Lsun/misc/Unsafe;->getAndAddInt(Ljava/lang/Object;JI)I

    .line 528
    return-void
.end method

.method public final compareAndSetPendingCount(II)Z
    .registers 9
    .param p1, "expected"    # I
    .param p2, "count"    # I

    .prologue
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

.method public complete(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
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

    .local v0, "p":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    if-eqz v0, :cond_10

    .line 637
    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->tryComplete()V

    .line 638
    :cond_10
    return-void
.end method

.method public abstract compute()V
.end method

.method public final decrementPendingCountUnlessZero()I
    .registers 7

    .prologue
    .line 550
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    :cond_0
    iget v4, p0, Ljava/util/concurrent/CountedCompleter;->pending:I

    .local v4, "c":I
    if-eqz v4, :cond_13

    .line 551
    sget-object v0, Ljava/util/concurrent/CountedCompleter;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/CountedCompleter;->PENDING:J

    add-int/lit8 v5, v4, -0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 550
    if-nez v0, :cond_0

    .line 552
    :cond_13
    return v4
.end method

.method protected final exec()Z
    .registers 2

    .prologue
    .line 732
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CountedCompleter;->compute()V

    .line 733
    const/4 v0, 0x0

    return v0
.end method

.method public final firstComplete()Ljava/util/concurrent/CountedCompleter;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 650
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    :cond_0
    iget v4, p0, Ljava/util/concurrent/CountedCompleter;->pending:I

    .local v4, "c":I
    if-nez v4, :cond_5

    .line 651
    return-object p0

    .line 652
    :cond_5
    sget-object v0, Ljava/util/concurrent/CountedCompleter;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/CountedCompleter;->PENDING:J

    add-int/lit8 v5, v4, -0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 653
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getCompleter()Ljava/util/concurrent/CountedCompleter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 500
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/CountedCompleter;->completer:Ljava/util/concurrent/CountedCompleter;

    return-object v0
.end method

.method public final getPendingCount()I
    .registers 2

    .prologue
    .line 509
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    iget v0, p0, Ljava/util/concurrent/CountedCompleter;->pending:I

    return v0
.end method

.method public getRawResult()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 745
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getRoot()Ljava/util/concurrent/CountedCompleter;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 562
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    move-object v0, p0

    .line 563
    .local v0, "a":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :goto_1
    iget-object v1, v0, Ljava/util/concurrent/CountedCompleter;->completer:Ljava/util/concurrent/CountedCompleter;

    .local v1, "p":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    if-eqz v1, :cond_7

    .line 564
    move-object v0, v1

    goto :goto_1

    .line 565
    :cond_7
    return-object v0
.end method

.method public final helpComplete(I)V
    .registers 6
    .param p1, "maxTasks"    # I

    .prologue
    .line 708
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    if-lez p1, :cond_18

    iget v2, p0, Ljava/util/concurrent/CountedCompleter;->status:I

    if-ltz v2, :cond_18

    .line 709
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .local v0, "t":Ljava/lang/Thread;
    instance-of v2, v0, Ljava/util/concurrent/ForkJoinWorkerThread;

    if-eqz v2, :cond_19

    move-object v1, v0

    .line 710
    check-cast v1, Ljava/util/concurrent/ForkJoinWorkerThread;

    .local v1, "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    iget-object v2, v1, Ljava/util/concurrent/ForkJoinWorkerThread;->pool:Ljava/util/concurrent/ForkJoinPool;

    .line 711
    iget-object v3, v1, Ljava/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava/util/concurrent/ForkJoinPool$WorkQueue;

    .line 710
    invoke-virtual {v2, v3, p0, p1}, Ljava/util/concurrent/ForkJoinPool;->helpComplete(Ljava/util/concurrent/ForkJoinPool$WorkQueue;Ljava/util/concurrent/CountedCompleter;I)I

    .line 715
    .end local v0    # "t":Ljava/lang/Thread;
    .end local v1    # "wt":Ljava/util/concurrent/ForkJoinWorkerThread;
    :cond_18
    :goto_18
    return-void

    .line 713
    .restart local v0    # "t":Ljava/lang/Thread;
    :cond_19
    sget-object v2, Ljava/util/concurrent/ForkJoinPool;->common:Ljava/util/concurrent/ForkJoinPool;

    invoke-virtual {v2, p0, p1}, Ljava/util/concurrent/ForkJoinPool;->externalHelpComplete(Ljava/util/concurrent/CountedCompleter;I)I

    goto :goto_18
.end method

.method internalPropagateException(Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 721
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    move-object v0, p0

    .local v0, "a":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    move-object v1, p0

    .line 722
    .local v1, "s":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :cond_2
    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/CountedCompleter;->onExceptionalCompletion(Ljava/lang/Throwable;Ljava/util/concurrent/CountedCompleter;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 723
    move-object v1, v0

    iget-object v0, v0, Ljava/util/concurrent/CountedCompleter;->completer:Ljava/util/concurrent/CountedCompleter;

    if-eqz v0, :cond_19

    iget v2, v0, Ljava/util/concurrent/CountedCompleter;->status:I

    if-ltz v2, :cond_19

    .line 724
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CountedCompleter;->recordExceptionalCompletion(Ljava/lang/Throwable;)I

    move-result v2

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_2

    .line 726
    :cond_19
    return-void
.end method

.method public final nextComplete()Ljava/util/concurrent/CountedCompleter;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    const/4 v1, 0x0

    .line 676
    iget-object v0, p0, Ljava/util/concurrent/CountedCompleter;->completer:Ljava/util/concurrent/CountedCompleter;

    .local v0, "p":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    if-eqz v0, :cond_a

    .line 677
    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->firstComplete()Ljava/util/concurrent/CountedCompleter;

    move-result-object v1

    return-object v1

    .line 679
    :cond_a
    invoke-virtual {p0}, Ljava/util/concurrent/CountedCompleter;->quietlyComplete()V

    .line 680
    return-object v1
.end method

.method public onCompletion(Ljava/util/concurrent/CountedCompleter;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 469
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    .local p1, "caller":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    return-void
.end method

.method public onExceptionalCompletion(Ljava/lang/Throwable;Ljava/util/concurrent/CountedCompleter;)Z
    .registers 4
    .param p1, "ex"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 490
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    .local p2, "caller":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    const/4 v0, 0x1

    return v0
.end method

.method public final propagateCompletion()V
    .registers 8

    .prologue
    .line 599
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    move-object v1, p0

    .local v1, "a":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    move-object v6, p0

    .line 601
    .local v6, "s":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :cond_2
    iget v4, v1, Ljava/util/concurrent/CountedCompleter;->pending:I

    .local v4, "c":I
    if-nez v4, :cond_f

    .line 602
    move-object v6, v1

    iget-object v1, v1, Ljava/util/concurrent/CountedCompleter;->completer:Ljava/util/concurrent/CountedCompleter;

    if-nez v1, :cond_2

    .line 603
    invoke-virtual {v6}, Ljava/util/concurrent/CountedCompleter;->quietlyComplete()V

    .line 604
    return-void

    .line 607
    :cond_f
    sget-object v0, Ljava/util/concurrent/CountedCompleter;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/CountedCompleter;->PENDING:J

    add-int/lit8 v5, v4, -0x1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 608
    return-void
.end method

.method public final quietlyCompleteRoot()V
    .registers 3

    .prologue
    .line 688
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    move-object v0, p0

    .line 689
    .local v0, "a":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :goto_1
    iget-object v1, v0, Ljava/util/concurrent/CountedCompleter;->completer:Ljava/util/concurrent/CountedCompleter;

    .local v1, "p":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    if-nez v1, :cond_9

    .line 690
    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->quietlyComplete()V

    .line 691
    return-void

    .line 693
    :cond_9
    move-object v0, v1

    goto :goto_1
.end method

.method public final setPendingCount(I)V
    .registers 2
    .param p1, "count"    # I

    .prologue
    .line 518
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    iput p1, p0, Ljava/util/concurrent/CountedCompleter;->pending:I

    .line 519
    return-void
.end method

.method protected setRawResult(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 754
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    return-void
.end method

.method public final tryComplete()V
    .registers 8

    .prologue
    .line 575
    .local p0, "this":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<TT;>;"
    move-object v1, p0

    .local v1, "a":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    move-object v6, p0

    .line 577
    .local v6, "s":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    :cond_2
    iget v4, v1, Ljava/util/concurrent/CountedCompleter;->pending:I

    .local v4, "c":I
    if-nez v4, :cond_12

    .line 578
    invoke-virtual {v1, v6}, Ljava/util/concurrent/CountedCompleter;->onCompletion(Ljava/util/concurrent/CountedCompleter;)V

    .line 579
    move-object v6, v1

    iget-object v1, v1, Ljava/util/concurrent/CountedCompleter;->completer:Ljava/util/concurrent/CountedCompleter;

    if-nez v1, :cond_2

    .line 580
    invoke-virtual {v6}, Ljava/util/concurrent/CountedCompleter;->quietlyComplete()V

    .line 581
    return-void

    .line 584
    :cond_12
    sget-object v0, Ljava/util/concurrent/CountedCompleter;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/CountedCompleter;->PENDING:J

    add-int/lit8 v5, v4, -0x1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 585
    return-void
.end method
