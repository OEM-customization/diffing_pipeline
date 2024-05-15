.class public Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;
.super Ljava/lang/Object;
.source "ReentrantReadWriteLock.java"

# interfaces
.implements Ljava/util/concurrent/locks/Lock;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/locks/ReentrantReadWriteLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WriteLock"
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = -0x4548bd97c08297b4L


# instance fields
.field private final greylist-max-o sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;


# direct methods
.method protected constructor whitelist core-platform-api test-api <init>(Ljava/util/concurrent/locks/ReentrantReadWriteLock;)V
    .registers 3
    .param p1, "lock"    # Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 928
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 929
    iget-object v0, p1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    iput-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    .line 930
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api getHoldCount()I
    .registers 2

    .line 1227
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getWriteHoldCount()I

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api isHeldByCurrentThread()Z
    .registers 2

    .line 1213
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->isHeldExclusively()Z

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api lock()V
    .registers 3

    .line 950
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->acquire(I)V

    .line 951
    return-void
.end method

.method public whitelist core-platform-api test-api lockInterruptibly()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1005
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->acquireInterruptibly(I)V

    .line 1006
    return-void
.end method

.method public whitelist core-platform-api test-api newCondition()Ljava/util/concurrent/locks/Condition;
    .registers 2

    .line 1185
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->newCondition()Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$ConditionObject;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 5

    .line 1197
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->getOwner()Ljava/lang/Thread;

    move-result-object v0

    .line 1198
    .local v0, "o":Ljava/lang/Thread;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_17

    .line 1199
    const-string v2, "[Unlocked]"

    goto :goto_31

    .line 1200
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

    .line 1198
    return-object v1
.end method

.method public whitelist core-platform-api test-api tryLock()Z
    .registers 2

    .line 1038
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->tryWriteLock()Z

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

    .line 1122
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->tryAcquireNanos(IJ)Z

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api unlock()V
    .registers 3

    .line 1138
    iget-object v0, p0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->sync:Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;->release(I)Z

    .line 1139
    return-void
.end method
