.class public Ljava/util/concurrent/locks/ReentrantLock;
.super Ljava/lang/Object;
.source "ReentrantLock.java"

# interfaces
.implements Ljava/util/concurrent/locks/Lock;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/locks/ReentrantLock$FairSync;,
        Ljava/util/concurrent/locks/ReentrantLock$NonfairSync;,
        Ljava/util/concurrent/locks/ReentrantLock$Sync;
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x6655a82c2cc86aebL


# instance fields
.field private final greylist sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;


# direct methods
.method public constructor whitelist core-platform-api test-api <init>()V
    .registers 2

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock$NonfairSync;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock$NonfairSync;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/locks/ReentrantLock;->sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;

    .line 267
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Z)V
    .registers 3
    .param p1, "fair"    # Z

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    if-eqz p1, :cond_b

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock$FairSync;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock$FairSync;-><init>()V

    goto :goto_10

    :cond_b
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock$NonfairSync;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock$NonfairSync;-><init>()V

    :goto_10
    iput-object v0, p0, Ljava/util/concurrent/locks/ReentrantLock;->sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;

    .line 277
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api getHoldCount()I
    .registers 2

    .line 542
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantLock;->sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->getHoldCount()I

    move-result v0

    return v0
.end method

.method protected whitelist core-platform-api test-api getOwner()Ljava/lang/Thread;
    .registers 2

    .line 625
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantLock;->sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->getOwner()Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist core-platform-api test-api getQueueLength()I
    .registers 2

    .line 667
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantLock;->sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->getQueueLength()I

    move-result v0

    return v0
.end method

.method protected whitelist core-platform-api test-api getQueuedThreads()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    .line 682
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantLock;->sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->getQueuedThreads()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getWaitQueueLength(Ljava/util/concurrent/locks/Condition;)I
    .registers 4
    .param p1, "condition"    # Ljava/util/concurrent/locks/Condition;

    .line 724
    if-eqz p1, :cond_18

    .line 726
    instance-of v0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;

    if-eqz v0, :cond_10

    .line 728
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantLock;->sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;

    move-object v1, p1

    check-cast v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->getWaitQueueLength(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;)I

    move-result v0

    return v0

    .line 727
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not owner"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 725
    :cond_18
    const/4 v0, 0x0

    throw v0
.end method

.method protected whitelist core-platform-api test-api getWaitingThreads(Ljava/util/concurrent/locks/Condition;)Ljava/util/Collection;
    .registers 4
    .param p1, "condition"    # Ljava/util/concurrent/locks/Condition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/locks/Condition;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    .line 749
    if-eqz p1, :cond_18

    .line 751
    instance-of v0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;

    if-eqz v0, :cond_10

    .line 753
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantLock;->sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;

    move-object v1, p1

    check-cast v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->getWaitingThreads(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;)Ljava/util/Collection;

    move-result-object v0

    return-object v0

    .line 752
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not owner"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 750
    :cond_18
    const/4 v0, 0x0

    throw v0
.end method

.method public final whitelist core-platform-api test-api hasQueuedThread(Ljava/lang/Thread;)Z
    .registers 3
    .param p1, "thread"    # Ljava/lang/Thread;

    .line 654
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantLock;->sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->isQueued(Ljava/lang/Thread;)Z

    move-result v0

    return v0
.end method

.method public final whitelist core-platform-api test-api hasQueuedThreads()Z
    .registers 2

    .line 639
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantLock;->sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->hasQueuedThreads()Z

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api hasWaiters(Ljava/util/concurrent/locks/Condition;)Z
    .registers 4
    .param p1, "condition"    # Ljava/util/concurrent/locks/Condition;

    .line 701
    if-eqz p1, :cond_18

    .line 703
    instance-of v0, p1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;

    if-eqz v0, :cond_10

    .line 705
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantLock;->sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;

    move-object v1, p1

    check-cast v1, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->hasWaiters(Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;)Z

    move-result v0

    return v0

    .line 704
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not owner"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 702
    :cond_18
    const/4 v0, 0x0

    throw v0
.end method

.method public final whitelist core-platform-api test-api isFair()Z
    .registers 2

    .line 608
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantLock;->sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;

    instance-of v0, v0, Ljava/util/concurrent/locks/ReentrantLock$FairSync;

    return v0
.end method

.method public whitelist core-platform-api test-api isHeldByCurrentThread()Z
    .registers 2

    .line 587
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantLock;->sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->isHeldExclusively()Z

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api isLocked()Z
    .registers 2

    .line 599
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantLock;->sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->isLocked()Z

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api lock()V
    .registers 2

    .line 294
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantLock;->sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->lock()V

    .line 295
    return-void
.end method

.method public whitelist core-platform-api test-api lockInterruptibly()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 344
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantLock;->sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->acquireInterruptibly(I)V

    .line 345
    return-void
.end method

.method public whitelist core-platform-api test-api newCondition()Ljava/util/concurrent/locks/Condition;
    .registers 2

    .line 509
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantLock;->sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->newCondition()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 5

    .line 765
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantLock;->sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->getOwner()Ljava/lang/Thread;

    move-result-object v0

    .line 766
    .local v0, "o":Ljava/lang/Thread;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_17

    .line 767
    const-string v2, "[Unlocked]"

    goto :goto_31

    .line 768
    :cond_17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Locked by thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 766
    return-object v1
.end method

.method public whitelist core-platform-api test-api tryLock()Z
    .registers 3

    .line 374
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantLock;->sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->nonfairTryAcquire(I)Z

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api tryLock(JLjava/util/concurrent/TimeUnit;)Z
    .registers 8
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 451
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantLock;->sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->tryAcquireNanos(IJ)Z

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api unlock()V
    .registers 3

    .line 466
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantLock;->sync:Ljava/util/concurrent/locks/ReentrantLock$Sync;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock$Sync;->release(I)Z

    .line 467
    return-void
.end method
